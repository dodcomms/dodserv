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

mv /etc/prosody/prosody.cfg.lua /etc/prosody/prosody.cfg.lua.ORIG

cat > /etc/prosody/prosody.cfg.lua << __PROSODYCONF__
admins = { "root@$(cat /var/lib/tor/hidden_service/hostname)" }

modules_enabled = {

		"roster"; -- Allow users to have a roster. Recommended ;)
		"saslauth"; -- Authentication for clients and servers. Recommended if you want to log in.
		"tls"; -- Add support for secure TLS on c2s/s2s connections
		"dialback"; -- s2s dialback support
		"disco"; -- Service discovery
		"private"; -- Private XML storage (for room bookmarks, etc.)
		"vcard"; -- Allow users to set vCards
		--"privacy"; -- Support privacy lists
		--"compression"; -- Stream compression (Debian: requires lua-zlib module to work)
		"legacyauth"; -- Legacy authentication. Only used by some old clients and bots.
		"version"; -- Replies to server version requests
		"uptime"; -- Report how long server has been running
		"time"; -- Let others know the time here on this server
		"ping"; -- Replies to XMPP pings with pongs
		"pep"; -- Enables users to publish their mood, activity, playing music and more
		"register"; -- Allow users to register on this server using a client and change passwords
		"adhoc"; -- Support for "ad-hoc commands" that can be executed with an XMPP client
		"admin_adhoc"; -- Allows administration via an XMPP client that supports ad-hoc commands
		"posix"; -- POSIX functionality, sends server to background, enables syslog, etc.
};

modules_disabled = {
	-- "presence"; -- Route user/contact status information
	-- "message"; -- Route messages
	-- "iq"; -- Route info queries
	-- "offline"; -- Store offline messages
};

allow_registration = true;

daemonize = true;

pidfile = "/var/run/prosody/prosody.pid";

ssl = {
	key = "/etc/prosody/certs/$(cat /var/lib/tor/hidden_service/hostname).key";
	certificate = "/etc/prosody/certs/$(cat /var/lib/tor/hidden_service/hostname).cert";
}

c2s_require_encryption = true

authentication = "internal_hashed"

VirtualHost "$(cat /var/lib/tor/hidden_service/hostname)"

	ssl = {
		key = "/etc/prosody/certs/$(cat /var/lib/tor/hidden_service/hostname).key";
		certificate = "/etc/prosody/certs/$(cat /var/lib/tor/hidden_service/hostname).crt";
	}

Component "$(cat /var/lib/tor/hidden_service/hostname)" "muc"

Include "conf.d/*.cfg.lua"
__PROSODYCONG__

openssl genrsa -out /etc/prosody/certs/$(cat /var/lib/tor/hidden_service/hostname).key 2048

# Put instructions here?
# Note: "Common Name"

openssl req -new -x509 -key /etc/prosody/certs/$(cat /var/lib/tor/hidden_service/hostname).key -out /etc/prosody/certs/$(cat /var/lib/tor/hidden_service/hostname).cert -days 1095

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

echo "Congratulations!"
sleep 2
echo "Open a Tor browser and visit your hidden service"
sleep 2
echo "**************************"
echo "* $(cat /var/lib/tor/hidden_service/hostname) *"
echo "**************************"
