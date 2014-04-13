#!/bin/bash
#
# LAMP, Linux Apache MySQL PHP

echo "Changing user to root"
echo "Please enter your root password"

su

echo "Updating System"

aptitude update && aptitude upgrade

echo "Installing Tor"

aptitude install tor

mv /etc/tor/torrc /etc/tor/torrc.ORIG

echo "Configuring Hidden Service"

cat > /etc/tor/torrc << __TORRC__
Log notice syslog
DataDirectory /var/lib/tor
HiddenServiceDir /var/lib/tor/hidden_service/
HiddenServicePort 22 127.0.0.1:22
HiddenServicePort 80 127.0.0.1:80
__TORRC__

echo "Starting Tor"

/etc/init.d/tor restart

echo "One moment please"

sleep 60

echo "Installing Apache2"

aptitude install apache2 apache2-doc

echo "Installing MySQL" 

aptitude install mysql-server mysql-client

echo "Installing PHP5"

aptitude install php5 php5-mysql libapache2-mod-php5

echo "Restarting Apache2"

/etc/init.d/apache2 restart

echo "PLEASE NOTE: You need make a secure record of the following details for future reference. DO IT NOW!"
echo "Hostname: $(cat /var/lib/tor/hidden_service/hostname)"
echo "Admin Account: root@$(cat /var/lib/tor/hidden_service/hostname)"
echo "Congratulations! When you're ready, restart the system by running 'reboot'"
