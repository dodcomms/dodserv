#!/bin/bash
#
# Install
# Tor Hidden Service
# SSH (Port 22)
# CMS - Wordpress (Port 80)
# XMPP - Prosody (Port 5222)
#
# sed -i.bak s/"x"/"y"/g /path/file

echo "**********************"
echo "* Follow the prompts *"
echo "**********************"

sleep 5

echo "***********************************"
echo "* Checking the network connection *"
echo "***********************************"

ping -c 3 torproject.org

echo "*******************"
echo "* Updating System *"
echo "*******************"

aptitude update && aptitude upgrade

echo "******************"
echo "* Installing Tor *"
echo "******************"

aptitude install tor

mv /etc/tor/torrc /etc/tor/torrc.ORIG

cat > /etc/tor/torrc << __TORRC__
Log notice syslog
DataDirectory /var/lib/tor
HiddenServiceDir /var/lib/tor/hidden_service/
HiddenServicePort 22 127.0.0.1:22
HiddenServicePort 80 127.0.0.1:80
HiddenServicePort 5222 127.0.0.1:5222
__TORRC__

/etc/init.d/tor restart

echo "**********************"
echo "* Installing OpenSSH *"
echo "**********************"

aptitude install openssh-server

echo "**********************"
echo "* Installing Apache2 *"
echo "**********************"

aptitude install apache2 apache2-doc

echo "********************"
echo "* Installing MySQL *"
echo "********************"

aptitude install mysql-server mysql-client

echo "*******************"
echo "* Installing PHP5 *"
echo "*******************"

aptitude install php5 php5-mysql libapache2-mod-php5

/etc/init.d/apache2 restart

echo "************************"
echo "* Installing Wordpress *"
echo "************************"

cd /var/www/

wget https://wordpress.org/latest.tar.gz

tar -xzvf latest.tar.gz

cd /var/www/wordpress/

echo "MySQL root user"

mysql -u root -p -e "create database wordpress;"

cp /var/www/wordpress/wp-config-sample.php /var/www/wordpress/wp-config.php

sed -i.bak s/database_name_here/wordpress/g wp-config.php

sed -i.bak s/username_here/root/g wp-config.php

echo "Repeat password:"

read dbpassword

sed -i.bak s/password_here/$dbpassword/g wp-config.php

sed -i.bak s/"define('AUTH_KEY',         'put your unique phrase here');"/"define('AUTH_KEY',         '"$(date +%s%N | sha256sum | base64 | head -c 64)"');"/g wp-config.php
sed -i.bak s/"define('SECURE_AUTH_KEY',  'put your unique phrase here');"/"define('SECURE_AUTH_KEY',  '"$(date +%s%N | sha256sum | base64 | head -c 64)"');"/g wp-config.php
sed -i.bak s/"define('LOGGED_IN_KEY',    'put your unique phrase here');"/"define('LOGGED_IN_KEY',    '"$(date +%s%N | sha256sum | base64 | head -c 64)"');"/g wp-config.php
sed -i.bak s/"define('NONCE_KEY',        'put your unique phrase here');"/"define('NONCE_KEY',        '"$(date +%s%N | sha256sum | base64 | head -c 64)"');"/g wp-config.php
sed -i.bak s/"define('AUTH_SALT',        'put your unique phrase here');"/"define('AUTH_SALT',        '"$(date +%s%N | sha256sum | base64 | head -c 64)"');"/g wp-config.php
sed -i.bak s/"define('SECURE_AUTH_SALT', 'put your unique phrase here');"/"define('SECURE_AUTH_SALT', '"$(date +%s%N | sha256sum | base64 | head -c 64)"');"/g wp-config.php
sed -i.bak s/"define('LOGGED_IN_SALT',   'put your unique phrase here');"/"define('LOGGED_IN_SALT',   '"$(date +%s%N | sha256sum | base64 | head -c 64)"');"/g wp-config.php
sed -i.bak s/"define('NONCE_SALT',       'put your unique phrase here');"/"define('NONCE_SALT',       '"$(date +%s%N | sha256sum | base64 | head -c 64)"');"/g wp-config.php

echo "**********************************"
echo "* Installing Prosody XMPP Server *"
echo "**********************************"

aptitude install prosody

cd /etc/prosody/

# mv /etc/prosody/prosody.cfg.lua /etc/prosody/prosody.cfg.lua.ORIG

# cat > /etc/prosody/prosody.cfg.lua << __PROSODYCONF__
#
# __PROSODYCONF__

# openssl genrsa -out /etc/prosody/certs/$(cat /var/lib/tor/hidden_service/hostname).key 2048

# Put instructions here?
# Note: "Common Name"

# openssl req -new -x509 -key /etc/prosody/certs/$(cat /var/lib/tor/hidden_service/hostname).key -out /etc/prosody/certs/$(cat /var/lib/tor/hidden_service/hostname).cert -days 1095

rm /var/www/latest.tar.gz

rm /var/www/index.html

cat > /var/www/index.html << __INDEXHTML__
<!DOCTYPE html>
<html>
 <body>
  <h1>
   $(cat /var/lib/tor/hidden_service/hostname)
  </h1>
  <p>
   Wordpress
   <a href="http://$(cat /var/lib/tor/hidden_service/hostname)/wordpress" target="_blank">
   $(cat /var/lib/tor/hidden_service/hostname)/wordpress
   </a>
  </p>
  <p>
   XMPP SERVER @$(cat /var/lib/tor/hidden_service/hostname)
  </p>
 </body>
</html>
__INDEXHTML__

echo "Congratulations!"
sleep 2
echo "Open a Tor browser and visit your hidden service"
sleep 2
echo "**************************"
echo "* $(cat /var/lib/tor/hidden_service/hostname) *"
echo "**************************"
