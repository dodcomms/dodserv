#!/bin/bash
#
# Install
# Tor Hidden Service
# SSH (Port 22)
# CMS - Wordpress (Port 80)
# Jabber/XMPP - ejabberd (Port 5222)
#
# http://patorjk.com/software/taag/#p=display&f=Elite&t=DIY%20OR%20DIE%0A%20%20COMMS%0A%20SERVER

echo "________  .________.___.                ________  .______________"
echo "\______ \ |   \__  |   |   ___________  \______ \ |   \_   _____/"
echo " |    |  \|   |/   |   |  /  _ \_  __ \  |    |  \|   ||    __)_ "
echo " |    `   \   |\____   | (  <_> )  | \/  |    `   \   ||        \"
echo "/_______  /___|/ ______|  \____/|__|    /_______  /___/_______  /"
echo "________\/     \/                               \/            \/ "
echo "\_   ___ \  ____   _____   _____   ______                        "
echo "/    \  \/ /  _ \ /     \ /     \ /  ___/                        "
echo "\     \___(  <_> )  Y Y  \  Y Y  \\___ \                         "
echo " \______  /\____/|__|_|  /__|_|  /____  >                        "
echo "  ______\/_            \/      \/     \/                         "
echo " /   _____/ ______________  __ ___________                       "
echo " \_____  \_/ __ \_  __ \  \/ // __ \_  __ \                      "
echo " /        \  ___/|  | \/\   /\  ___/|  | \/                      "
echo "/_______  /\___  >__|    \_/  \___  >__|                         "
echo "        \/     \/                 \/                             "

sleep 5

echo "_________ .__                  __   .__                "
echo "\_   ___ \|  |__   ____  ____ |  | _|__| ____    ____  "
echo "/    \  \/|  |  \_/ __ \/ ___\|  |/ /  |/    \  / ___\ "
echo "\     \___|   Y  \  ___|  \___|    <|  |   |  \/ /_/  >"
echo " \______  /___|  /\___  >___  >__|_ \__|___|  /\___  / "
echo " _______\/     \/ __  \/    \/     \/      _\//_____/  "
echo " \      \   _____/  |___  _  _____________|  | __      "
echo " /   |   \_/ __ \   __\ \/ \/ /  _ \_  __ \  |/ /      "
echo "/    |    \  ___/|  |  \     (  <_> )  | \/    <       "
echo "\____|__  /\___  >__|   \/\_/ \____/|__|  |__|_ \      "
echo "        \/     \/                              \/      "

sleep 5

ping -c 3 torproject.org

echo " ____ ___           .___       __  .__                "
echo "|    |   \_____   __| _/____ _/  |_|__| ____    ____  "
echo "|    |   |____ \ / __ |\__  \\   __\  |/    \  / ___\ "
echo "|    |  /|  |_> > /_/ | / __ \|  | |  |   |  \/ /_/  >"
echo "|______/ |   __/\____ |(____  /__| |__|___|  /\___  / "
echo "  _______|__|        \/  __ \/             \//_____/  "
echo " /   _____/__.__. ______/  |_  ____                   "
echo " \_____  <   |  |/  ___|   __\/ __ \                  "
echo " /        \___  |\___ \ |  | \  ___/                  "
echo "/_______  / ____/____  >|__|  \___  >                 "
echo "        \/\/         \/           \/                  "

sleep 5

aptitude update && aptitude upgrade

echo "___________           "
echo "\__    ___/__________ "
echo "  |    | /  _ \_  __ \"
echo "  |    |(  <_> )  | \/"
echo "  |____| \____/|__|   "

sleep 5

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

echo "________                         _________ _________ ___ ___  "
echo "\_____  \ ______   ____   ____  /   _____//   _____//   |   \ "
echo " /   |   \\____ \_/ __ \ /    \ \_____  \ \_____  \/    ~    \"
echo "/    |    \  |_> >  ___/|   |  \/        \/        \    Y    /"
echo "\_______  /   __/ \___  >___|  /_______  /_______  /\___|_  / "
echo "        \/|__|        \/     \/        \/        \/       \/  "

sleep 5

aptitude install openssh-server

echo "   _____                      .__           ________  "
echo "  /  _  \ ___________    ____ |  |__   ____ \_____  \ "
echo " /  /_\  \\____ \__  \ _/ ___\|  |  \_/ __ \ /  ____/ "
echo "/    |    \  |_> > __ \\  \___|   Y  \  ___//       \ "
echo "\____|__  /   __(____  /\___  >___|  /\___  >_______ \"
echo "        \/|__|       \/     \/     \/     \/        \/"

aptitude install apache2 apache2-doc

echo "   _____          _________________  .____     "
echo "  /     \ ___.__./   _____/\_____  \ |    |    "
echo " /  \ /  <   |  |\_____  \  /  / \  \|    |    "
echo "/    Y    \___  |/        \/   \_/.  \    |___ "
echo "\____|__  / ____/_______  /\_____\ \_/_______ \"
echo "        \/\/            \/        \__>       \/"

aptitude install mysql-server mysql-client

echo "__________  ___ _____________.________"
echo "\______   \/   |   \______   \   ____/"
echo " |     ___/    ~    \     ___/____  \ "
echo " |    |   \    Y    /    |   /       \"
echo " |____|    \___|_  /|____|  /______  /"
echo "                 \/                \/ "

aptitude install php5 php5-mysql libapache2-mod-php5

/etc/init.d/apache2 restart

echo " __      __                .___                                  "
echo "/  \    /  \___________  __| _/____________  ____   ______ ______"
echo "\   \/\/   /  _ \_  __ \/ __ |\____ \_  __ \/ __ \ /  ___//  ___/"
echo " \        (  <_> )  | \/ /_/ ||  |_> >  | \|  ___/ \___ \ \___ \ "
echo "  \__/\  / \____/|__|  \____ ||   __/|__|   \___  >____  >____  >"
echo "       \/                   \/|__|              \/     \/     \/ "

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

echo "     ____.     ___.  ___.                 
echo "    |    |____ \_ |__\_ |__   ___________ "
echo "    |    \__  \ | __ \| __ \_/ __ \_  __ \"
echo "/\__|    |/ __ \| \_\ \ \_\ \  ___/|  | \/"
echo "\________(____  /___  /___  /\___  >__|   "
echo "____  ___  ___\/ ___\/____\/_____\/__     "
echo "\   \/  / /     \\______   \______   \    "
echo " \     / /  \ /  \|     ___/|     ___/    "
echo " /     \/    Y    \    |    |    |        "
echo "/___/\  \____|__  /____|    |____|        "
echo "      \_/       \/                        "

aptitude install ejabberd

mv /etc/ejabberd/ejabberd.cfg /etc/ejabberd/ejabberd.cfg.ORIG

# Try using (sed -i.bak s/"x"/"y"/g path/file) insted of (cat > path/file << __CONF__)
# There's a problem with (")

cat > /etc/ejabberd/ejabberd.cfg << __EJABBERD__
{acl, admin, {user, "admin", "$(cat /var/lib/tor/hidden_service/hostname)"}}.
{hosts, ["localhost","$(cat /var/lib/tor/hidden_service/hostname)"]}.
{loglevel, 0}.
{listen,
 [
  {5222, ejabberd_c2s, [
			{access, c2s},
			{shaper, c2s_shaper},
			{max_stanza_size, 65536},
                        %%zlib,
			starttls, {certfile, "/etc/ejabberd/ejabberd.pem"}
		       ]},
		       
  {5280, ejabberd_http, [
			 %%{request_handlers,
			 %% [
			 %%  {["pub", "archive"], mod_http_fileserver}
			 %% ]},
			 %%captcha,
			 http_bind,
			 http_poll,
			 web_admin
			]}

 ]}.
{max_fsm_queue, 1000}.
{s2s_use_starttls, true}.
{s2s_default_policy, deny}.
{auth_method, internal}.

%% Anonymous login support:
%%   auth_method: anonymous
%%   anonymous_protocol: sasl_anon | login_anon | both
%%   allow_multiple_connections: true | false
%%
%%{host_config, "public.example.org", [{auth_method, anonymous},
%%                                     {allow_multiple_connections, false},
%%                                     {anonymous_protocol, sasl_anon}]}.
%%
%% To use both anonymous and internal authentication:
%%
%%{host_config, "public.example.org", [{auth_method, [internal, anonymous]}]}.

{shaper, normal, {maxrate, 1000}}.
{shaper, fast, {maxrate, 50000}}.
{acl, local, {user_regexp, ""}}.
{access, max_user_sessions, [{10, all}]}.
{access, max_user_offline_messages, [{5000, admin}, {100, all}]}. 
{access, local, [{allow, local}]}.
{access, c2s, [{deny, blocked},
	       {allow, all}]}.
{access, c2s_shaper, [{none, admin},
		      {normal, all}]}.
{access, announce, [{allow, admin}]}.
{access, configure, [{allow, admin}]}.
{access, muc_admin, [{allow, admin}]}.
{access, muc, [{allow, all}]}.
{access, register, [{allow, all}]}.
{access, pubsub_createnode, [{allow, all}]}.
{language, "en"}.

{modules,
 [
  {mod_adhoc,    []},
  {mod_announce, [{access, announce}]}, % requires mod_adhoc
  {mod_caps,     []},
  {mod_configure,[]}, % requires mod_adhoc
  {mod_admin_extra, []},
  {mod_disco,    []},
  %%{mod_echo,   [{host, "echo.localhost"}]},
  {mod_irc,      []},
  %% NOTE that mod_http_fileserver must also be enabled in the
  %% "request_handlers" clause of the "ejabberd_http" listener
  %% configuration (see the "LISTENING PORTS" section above).
  %%{mod_http_fileserver, [
  %%                       {docroot, "/var/www"}, 
  %%                       {accesslog, "/var/log/ejabberd/access.log"}
  %%                      ]},
  {mod_last,     []},
  {mod_muc,      [
		  %%{host, "conference.@HOST@"},
		  {access, muc},
		  {access_create, muc},
		  {access_persistent, muc},
		  {access_admin, muc_admin},
		  {max_users, 500}
		 ]},
  %%{mod_muc_log,[]},
  {mod_offline,  [{access_max_user_messages, max_user_offline_messages}]},
  {mod_privacy,  []},
  {mod_private,  []},
  {mod_proxy65,  [
		  {access, local},
		  {shaper, c2s_shaper}
		 ]},
  {mod_pubsub,   [ % requires mod_caps
		  {access_createnode, pubsub_createnode},
		  {pep_sendlast_offline, false},
		  {last_item_cache, false},
		  %%{plugins, ["default", "pep"]}
		  {plugins, ["flat", "hometree", "pep"]}  % pep requires mod_caps
		 ]},
  {mod_register, [
		  %%
		  %% After successful registration, the user receives
		  %% a message with this subject and body.
		  %%
		  {welcome_message, {"Welcome!",
				     "Welcome to a Jabber service powered by Debian. "
				     "For information about Jabber visit "
				     "http://www.jabber.org"}},
		  %% Replace it with 'none' if you don't want to send such message:
		  %%{welcome_message, none},

		  %%
		  %% When a user registers, send a notification to
		  %% these Jabber accounts.
		  %%
		  %%{registration_watchers, ["admin1@example.org"]},

		  {access, register}
		 ]},
  {mod_roster,   []},
  %%{mod_service_log,[]},
  %%{mod_shared_roster,[]},
  {mod_stats,    []},
  {mod_time,     []},
  {mod_vcard,    []},
  {mod_version,  []}
 ]}.
__EJABBERD__

/etc/init.d/ejabberd restart

rm /var/www/latest.tar.gz

rm /var/www/index.html

cat > /var/www/index.html << __INDEXHTML__
<!DOCTYPE html>
<html>
 <body>
<pre>
________  .________.___.                ________  .______________
\______ \ |   \__  |   |   ___________  \______ \ |   \_   _____/
 |    |  \|   |/   |   |  /  _ \_  __ \  |    |  \|   ||    __)_ 
 |    `   \   |\____   | (  <_> )  | \/  |    `   \   ||        \
/_______  /___|/ ______|  \____/|__|    /_______  /___/_______  /
________\/     \/                               \/            \/ 
\_   ___ \  ____   _____   _____   ______                        
/    \  \/ /  _ \ /     \ /     \ /  ___/                        
\     \___(  <_> )  Y Y  \  Y Y  \\___ \                         
 \______  /\____/|__|_|  /__|_|  /____  >                        
  ______\/_            \/      \/     \/                         
 /   _____/ ______________  __ ___________                       
 \_____  \_/ __ \_  __ \  \/ // __ \_  __ \                      
 /        \  ___/|  | \/\   /\  ___/|  | \/                      
/_______  /\___  >__|    \_/  \___  >__|                         
        \/     \/                 \/                             
</pre>
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


echo " ▄▄·        ▐ ▄  ▄▄ • ▄▄▄   ▄▄▄· ▄▄▄▄▄▄• ▄▌▄▄▌   ▄▄▄· ▄▄▄▄▄▪         ▐ ▄ .▄▄ · ▄▄ "
echo "▐█ ▌▪▪     •█▌▐█▐█ ▀ ▪▀▄ █·▐█ ▀█ •██  █▪██▌██•  ▐█ ▀█ •██  ██ ▪     •█▌▐█▐█ ▀. ██▌"
echo "██ ▄▄ ▄█▀▄ ▐█▐▐▌▄█ ▀█▄▐▀▀▄ ▄█▀▀█  ▐█.▪█▌▐█▌██▪  ▄█▀▀█  ▐█.▪▐█· ▄█▀▄ ▐█▐▐▌▄▀▀▀█▄▐█·"
echo "▐███▌▐█▌.▐▌██▐█▌▐█▄▪▐█▐█•█▌▐█ ▪▐▌ ▐█▌·▐█▄█▌▐█▌▐▌▐█ ▪▐▌ ▐█▌·▐█▌▐█▌.▐▌██▐█▌▐█▄▪▐█.▀ "
echo "·▀▀▀  ▀█▄▀▪▀▀ █▪·▀▀▀▀ .▀  ▀ ▀  ▀  ▀▀▀  ▀▀▀ .▀▀▀  ▀  ▀  ▀▀▀ ▀▀▀ ▀█▄▀▪▀▀ █▪ ▀▀▀▀  ▀ "

sleep 2
echo "Open a Tor browser and visit your hidden service"
sleep 2
echo "**************************"
echo "* $(cat /var/lib/tor/hidden_service/hostname) *"
echo "**************************"
