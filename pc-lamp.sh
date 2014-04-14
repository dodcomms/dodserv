#!/bin/bash
#

echo "Be ready to follow the prompts..."

sleep 5

echo "... and pay attention to your passwords"

sleep 5

echo "Ready?"

sleep 5

echo "Here we go"

sleep 5

echo "Updating System"

sleep 5

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

# echo "You will be asked to enter a MySQL root user password."
# echo "Please take note of your MySQL root user password."
# echo "You will need it again shortly."

sleep 10

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

echo "MySQL root user"

mysql -u root -p -e "create database wordpress;"

echo "MySQL root user"

echo "Repeat password:"

read dbpassword

cat > /var/www/wordpress/wp-config.php << __WPCONFIG__
<?php
define('DB_NAME', 'wordpress');
define('DB_USER', 'root');
define('DB_PASSWORD', 'test');
define('DB_HOST', 'localhost');
define('DB_CHARSET', 'utf8');
define('DB_COLLATE', '');
define('AUTH_KEY',         'put your unique phrase here');
define('SECURE_AUTH_KEY',  'put your unique phrase here');
define('LOGGED_IN_KEY',    'put your unique phrase here');
define('NONCE_KEY',        'put your unique phrase here');
define('AUTH_SALT',        'put your unique phrase here');
define('SECURE_AUTH_SALT', 'put your unique phrase here');
define('LOGGED_IN_SALT',   'put your unique phrase here');
define('NONCE_SALT',       'put your unique phrase here');
$table_prefix  = 'wp_';
define('WPLANG', '');
define('WP_DEBUG', false);
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');
require_once(ABSPATH . 'wp-settings.php');
__WPCONFIG__

rm /var/www/index.html

cat > /var/www/index.html << __INDEXHTML__
$(cat /var/lib/tor/hidden_service/hostname)
__INDEXHTML__

rm /var/www/latest.tar.gz

echo "Congratulations!"
sleep 2
echo "Now, open a Tor browser"
sleep 2
echo "and visit your hidden service:"
sleep 2
echo "$(cat /var/lib/tor/hidden_service/hostname)"
