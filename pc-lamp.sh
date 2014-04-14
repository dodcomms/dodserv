#!/bin/bash

echo "Follow the prompts and pay attention to your passwords"

sleep 5

echo "Updating System"

aptitude update && aptitude upgrade

echo "Installing Tor"

aptitude install tor

mv /etc/tor/torrc /etc/tor/torrc.ORIG

cat > /etc/tor/torrc << __TORRC__
Log notice syslog
DataDirectory /var/lib/tor
HiddenServiceDir /var/lib/tor/hidden_service/
HiddenServicePort 22 127.0.0.1:22
HiddenServicePort 80 127.0.0.1:80
__TORRC__

echo "Restarting Tor"

/etc/init.d/tor restart

echo "Installing Apache2"

aptitude install apache2 apache2-doc

echo "Installing MySQL"

sleep 5

echo "Follow the prompts and pay attention to your passwords"

sleep 5

aptitude install mysql-server mysql-client

echo "Installing PHP5"

aptitude install php5 php5-mysql libapache2-mod-php5

echo "Restarting Apache2"

/etc/init.d/apache2 restart

echo "Installing Wordpress"

cd /var/www/

wget https://wordpress.org/latest.tar.gz

echo "Extrating Wordpress"

tar -xzvf latest.tar.gz

cd /var/www/wordpress/

echo "Creating Wordpress database"

echo "Follow the prompts and pay attention to your passwords"

sleep 5

echo "MySQL root user"

mysql -u root -p -e "create database wordpress;"

cp /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php

sed -i.bak s/database_name_here/wordpress/g wp-config.php

sed -i.bak s/username_here/root/g wp-config.php

echo "Repeat password:"

read dbpassword

sed -i.bak s/password_here/$dbpassword/g wp-config.php

rm /var/www/index.html

cat > /var/www/index.html << __INDEXHTML__
$(cat /var/lib/tor/hidden_service/hostname)
__INDEXHTML__

rm /var/www/latest.tar.gz

echo "Congratulations!"
sleep 2
echo "Now, open a Tor browser"
sleep 2
echo "and visit your hidden service"
sleep 2
echo "**************************"
echo "* $(cat /var/lib/tor/hidden_service/hostname *"
echo "**************************"
