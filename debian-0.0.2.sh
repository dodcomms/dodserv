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

cp /etc/prosody/prosody.cfg.lua /etc/prosody/prosody.cfg.lua.ORIG

sed -i.bak s/"admins = { }"/"admins = { "root@$(cat /var/lib/tor/hidden_service/hostname)" }"/g prosody.cfg.lua

sed -i.bak s/"allow_registration = false;"/"allow_registration = true;"/g prosody.cfg.lua

sed -i.bak s/"--c2s_require_encryption = false"/"c2s_require_encryption = true"/g  prosody.cfg.lua

sed -i.bak s/"authentication = "internal_plain""/"authentication = "internal_hashed""/g  prosody.cfg.lua

sed -i.bak s/"info = "/var/log/prosody/prosody.log";"/"--info = "/var/log/prosody/prosody.log";"/g  prosody.cfg.lua

sed -i.bak s/"error = "/var/log/prosody/prosody.err";"/"--error = "/var/log/prosody/prosody.err";"/g  prosody.cfg.lua

sed -i.bak s/"{ levels = { "error" }; to = "syslog";  };"/"--{ levels = { "error" }; to = "syslog";  };"/g  prosody.cfg.lua

sed -i.bak s/"VirtualHost "example.com""/"VirtualHost "$(cat /var/lib/tor/hidden_service/hostname)""/g  prosody.cfg.lua

sed -i.bak s/"enabled = false -- Remove this line to enable this host"/"disallow_s2s = true"/g  prosody.cfg.lua

sed -i.bak s/"key = "/etc/prosody/certs/localhost.key";"/"key = "/etc/prosody/certs/$(cat /var/lib/tor/hidden_service/hostname).key";"/g prosody.cfg.lua

sed -i.bak s/"certificate = "/etc/prosody/certs/localhost.cert";"/"certificate = "/etc/prosody/certs/$(cat /var/lib/tor/hidden_service/hostname).cert";"/g prosody.cfg.lua

sed -i.bak s/"--Component "conference.example.com" "muc""/"Component "conference.$(cat /var/lib/tor/hidden_service/hostname)" "muc""/g  prosody.cfg.lua

openssl genrsa -out /etc/prosody/certs/$(cat /var/lib/tor/hidden_service/hostname).key 2048

# Put instructions here?
# Note: "Common Name"

openssl req -new -x509 -key /etc/prosody/certs/$(cat /var/lib/tor/hidden_service/hostname).key -out /etc/prosody/certs/$(cat /var/lib/tor/hidden_service/hostname).cert -days 1095

echo "***************"
echo "* Cleaning up *"
echo "***************"

rm /var/www/latest.tar.gz

echo "*********************"
echo "* Creating Homepage *"
echo "*********************"

rm /var/www/index.html

cat > /var/www/index.html << __INDEXHTML__
<!DOCTYPE html>
 <html>
  <body>
    <h1>
      $(cat /var/lib/tor/hidden_service/hostname)
     </h1>
     <p>
       <a href="http://$(cat /var/lib/tor/hidden_service/hostname)/wordpress" target="_blank">
         $(cat /var/lib/tor/hidden_service/hostname)/wordpress
       </a>
    </p>
     <p>
       XMPP SERVER <username>@$(cat /var/lib/tor/hidden_service/hostname)
     </p>
   </body>
</html>
__INDEXHTML__

echo "********************"
echo "* Congratulations! *"
echo "********************"
sleep 2
echo "Open a Tor browser and visit your hidden service"
sleep 2
echo "**************************"
echo "* $(cat /var/lib/tor/hidden_service/hostname) *"
echo "**************************"
