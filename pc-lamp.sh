#!/bin/bash
#

echo "Be ready to follow the prompts and take note of your MySQL root user password"

sleep 5

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

echo "Configuing Wordpress database"

echo "Please repeat your MySQL root user password"

read dbpassword

cat > /var/www/wordpress/wp-config.php << __WPCONFIG__
<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '$dbpassword');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'put your unique phrase here');
define('SECURE_AUTH_KEY',  'put your unique phrase here');
define('LOGGED_IN_KEY',    'put your unique phrase here');
define('NONCE_KEY',        'put your unique phrase here');
define('AUTH_SALT',        'put your unique phrase here');
define('SECURE_AUTH_SALT', 'put your unique phrase here');
define('LOGGED_IN_SALT',   'put your unique phrase here');
define('NONCE_SALT',       'put your unique phrase here');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
__WPCONFIG__

rm /var/www/index.html

cat > /var/www/index.html << __INDEXHTML__
$(cat /var/lib/tor/hidden_service/hostname)
__INDEXHTML__

rm /var/www/latest.tar.gz

echo "Congratulations! You can now open a Tor browser and"
echo "visit your hidden service: $(cat /var/lib/tor/hidden_service/hostname)"
