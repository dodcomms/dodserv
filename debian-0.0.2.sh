#!/bin/bash
#
# Install
# Tor Hidden Service
# SSH (Port 22)
# CMS - Wordpress (Port 80)
# Jabber/XMPP - ejabberd (Port 5222)
#
# http://patorjk.com/software/taag/#p=display&f=Elite&t=DIY%20OR%20DIE%0A%20%20COMMS%0A%20SERVER

echo "·▄▄▄▄  ▪   ▄· ▄▌          ▄▄▄      ·▄▄▄▄  ▪  ▄▄▄ ."
echo "██▪ ██ ██ ▐█▪██▌    ▪     ▀▄ █·    ██▪ ██ ██ ▀▄.▀·"
echo "▐█· ▐█▌▐█·▐█▌▐█▪     ▄█▀▄ ▐▀▀▄     ▐█· ▐█▌▐█·▐▀▀▪▄"
echo "██. ██ ▐█▌ ▐█▀·.    ▐█▌.▐▌▐█•█▌    ██. ██ ▐█▌▐█▄▄▌"
echo "▀▀▀▀▀• ▀▀▀  ▀ •      ▀█▄▀▪.▀  ▀    ▀▀▀▀▀• ▀▀▀ ▀▀▀ "
echo "          ▄▄·       • ▌ ▄ ·. • ▌ ▄ ·. .▄▄ ·       "
echo "         ▐█ ▌▪▪     ·██ ▐███▪·██ ▐███▪▐█ ▀.       "
echo "         ██ ▄▄ ▄█▀▄ ▐█ ▌▐▌▐█·▐█ ▌▐▌▐█·▄▀▀▀█▄      "
echo "         ▐███▌▐█▌.▐▌██ ██▌▐█▌██ ██▌▐█▌▐█▄▪▐█      "
echo "         ·▀▀▀  ▀█▄▀▪▀▀  █▪▀▀▀▀▀  █▪▀▀▀ ▀▀▀▀       "
echo "     .▄▄ · ▄▄▄ .▄▄▄   ▌ ▐·▄▄▄ .▄▄▄                "
echo "     ▐█ ▀. ▀▄.▀·▀▄ █·▪█·█▌▀▄.▀·▀▄ █·              "
echo "     ▄▀▀▀█▄▐▀▀▪▄▐▀▀▄ ▐█▐█•▐▀▀▪▄▐▀▀▄               "
echo "     ▐█▄▪▐█▐█▄▄▌▐█•█▌ ███ ▐█▄▄▌▐█•█▌              "
echo "      ▀▀▀▀  ▀▀▀ .▀  ▀. ▀   ▀▀▀ .▀  ▀              "

sleep 5

echo " ▄▄·  ▄ .▄▄▄▄ . ▄▄· ▄ •▄ ▪   ▐ ▄  ▄▄ • "
echo "▐█ ▌▪██▪▐█▀▄.▀·▐█ ▌▪█▌▄▌▪██ •█▌▐█▐█ ▀ ▪"
echo "██ ▄▄██▀▐█▐▀▀▪▄██ ▄▄▐▀▀▄·▐█·▐█▐▐▌▄█ ▀█▄"
echo "▐███▌██▌▐▀▐█▄▄▌▐███▌▐█.█▌▐█▌██▐█▌▐█▄▪▐█"
echo "·▀▀▀ ▀▀▀ · ▀▀▀ ·▀▀▀ ·▀  ▀▀▀▀▀▀ █▪·▀▀▀▀ "
echo " ▐ ▄ ▄▄▄ .▄▄▄▄▄▄▄▌ ▐ ▄▌      ▄▄▄  ▄ •▄ "
echo "•█▌▐█▀▄.▀·•██  ██· █▌▐█▪     ▀▄ █·█▌▄▌▪"
echo "▐█▐▐▌▐▀▀▪▄ ▐█.▪██▪▐█▐▐▌ ▄█▀▄ ▐▀▀▄ ▐▀▀▄·"
echo "██▐█▌▐█▄▄▌ ▐█▌·▐█▌██▐█▌▐█▌.▐▌▐█•█▌▐█.█▌"
echo "▀▀ █▪ ▀▀▀  ▀▀▀  ▀▀▀▀ ▀▪ ▀█▄▀▪.▀  ▀·▀  ▀"

sleep 5

ping -c 3 torproject.org

echo "▄• ▄▌ ▄▄▄··▄▄▄▄   ▄▄▄· ▄▄▄▄▄▪   ▐ ▄  ▄▄ • "
echo "█▪██▌▐█ ▄███▪ ██ ▐█ ▀█ •██  ██ •█▌▐█▐█ ▀ ▪"
echo "█▌▐█▌ ██▀·▐█· ▐█▌▄█▀▀█  ▐█.▪▐█·▐█▐▐▌▄█ ▀█▄"
echo "▐█▄█▌▐█▪·•██. ██ ▐█ ▪▐▌ ▐█▌·▐█▌██▐█▌▐█▄▪▐█"
echo " ▀▀▀ .▀   ▀▀▀▀▀•  ▀  ▀  ▀▀▀ ▀▀▀▀▀ █▪·▀▀▀▀ "
echo "    .▄▄ ·  ▄· ▄▌.▄▄ · ▄▄▄▄▄▄▄▄ .• ▌ ▄ ·.  "
echo "    ▐█ ▀. ▐█▪██▌▐█ ▀. •██  ▀▄.▀··██ ▐███▪ "
echo "    ▄▀▀▀█▄▐█▌▐█▪▄▀▀▀█▄ ▐█.▪▐▀▀▪▄▐█ ▌▐▌▐█· "
echo "    ▐█▄▪▐█ ▐█▀·.▐█▄▪▐█ ▐█▌·▐█▄▄▌██ ██▌▐█▌ "
echo "     ▀▀▀▀   ▀ •  ▀▀▀▀  ▀▀▀  ▀▀▀ ▀▀  █▪▀▀▀ "

sleep 5

aptitude update && aptitude upgrade

echo "▪   ▐ ▄ .▄▄ · ▄▄▄▄▄ ▄▄▄· ▄▄▌  ▄▄▌  ▪   ▐ ▄  ▄▄ • "
echo "██ •█▌▐█▐█ ▀. •██  ▐█ ▀█ ██•  ██•  ██ •█▌▐█▐█ ▀ ▪"
echo "▐█·▐█▐▐▌▄▀▀▀█▄ ▐█.▪▄█▀▀█ ██▪  ██▪  ▐█·▐█▐▐▌▄█ ▀█▄"
echo "▐█▌██▐█▌▐█▄▪▐█ ▐█▌·▐█ ▪▐▌▐█▌▐▌▐█▌▐▌▐█▌██▐█▌▐█▄▪▐█"
echo "▀▀▀▀▀ █▪ ▀▀▀▀  ▀▀▀  ▀  ▀ .▀▀▀ .▀▀▀ ▀▀▀▀▀ █▪·▀▀▀▀ "
echo "              ▄▄▄▄▄      ▄▄▄                     "
echo "              •██  ▪     ▀▄ █·                   "
echo "               ▐█.▪ ▄█▀▄ ▐▀▀▄                    "
echo "               ▐█▌·▐█▌.▐▌▐█•█▌                   "
echo "               ▀▀▀  ▀█▄▀▪.▀  ▀                   "

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

echo "▪   ▐ ▄ .▄▄ · ▄▄▄▄▄ ▄▄▄· ▄▄▌  ▄▄▌  ▪   ▐ ▄  ▄▄ • "
echo "██ •█▌▐█▐█ ▀. •██  ▐█ ▀█ ██•  ██•  ██ •█▌▐█▐█ ▀ ▪"
echo "▐█·▐█▐▐▌▄▀▀▀█▄ ▐█.▪▄█▀▀█ ██▪  ██▪  ▐█·▐█▐▐▌▄█ ▀█▄"
echo "▐█▌██▐█▌▐█▄▪▐█ ▐█▌·▐█ ▪▐▌▐█▌▐▌▐█▌▐▌▐█▌██▐█▌▐█▄▪▐█"
echo "▀▀▀▀▀ █▪ ▀▀▀▀  ▀▀▀  ▀  ▀ .▀▀▀ .▀▀▀ ▀▀▀▀▀ █▪·▀▀▀▀ "
echo "           ▄▄▄·▄▄▄ . ▐ ▄ .▄▄ · .▄▄ ·  ▄ .▄       "
echo "    ▪     ▐█ ▄█▀▄.▀·•█▌▐█▐█ ▀. ▐█ ▀. ██▪▐█       "
echo "     ▄█▀▄  ██▀·▐▀▀▪▄▐█▐▐▌▄▀▀▀█▄▄▀▀▀█▄██▀▐█       "
echo "    ▐█▌.▐▌▐█▪·•▐█▄▄▌██▐█▌▐█▄▪▐█▐█▄▪▐███▌▐▀       "
echo "     ▀█▄▀▪.▀    ▀▀▀ ▀▀ █▪ ▀▀▀▀  ▀▀▀▀ ▀▀▀ ·       "

sleep 5

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

echo "▪   ▐ ▄ .▄▄ · ▄▄▄▄▄ ▄▄▄· ▄▄▌  ▄▄▌  ▪   ▐ ▄  ▄▄ • "
echo "██ •█▌▐█▐█ ▀. •██  ▐█ ▀█ ██•  ██•  ██ •█▌▐█▐█ ▀ ▪"
echo "▐█·▐█▐▐▌▄▀▀▀█▄ ▐█.▪▄█▀▀█ ██▪  ██▪  ▐█·▐█▐▐▌▄█ ▀█▄"
echo "▐█▌██▐█▌▐█▄▪▐█ ▐█▌·▐█ ▪▐▌▐█▌▐▌▐█▌▐▌▐█▌██▐█▌▐█▄▪▐█"
echo "▀▀▀▀▀ █▪ ▀▀▀▀  ▀▀▀  ▀  ▀ .▀▀▀ .▀▀▀ ▀▀▀▀▀ █▪·▀▀▀▀ "
echo "      ▐▄▄▄ ▄▄▄· ▄▄▄▄· ▄▄▄▄· ▄▄▄ .▄▄▄             "
echo "       ·██▐█ ▀█ ▐█ ▀█▪▐█ ▀█▪▀▄.▀·▀▄ █·           "
echo "     ▪▄ ██▄█▀▀█ ▐█▀▀█▄▐█▀▀█▄▐▀▀▪▄▐▀▀▄            "
echo "     ▐▌▐█▌▐█ ▪▐▌██▄▪▐███▄▪▐█▐█▄▄▌▐█•█▌           "
echo "      ▀▀▀• ▀  ▀ ·▀▀▀▀ ·▀▀▀▀  ▀▀▀ .▀  ▀           "
echo "          ▐▄• ▄ • ▌ ▄ ·.  ▄▄▄· ▄▄▄·              "
echo "           █▌█▌▪·██ ▐███▪▐█ ▄█▐█ ▄█              "
echo "           ·██· ▐█ ▌▐▌▐█· ██▀· ██▀·              "
echo "          ▪▐█·█▌██ ██▌▐█▌▐█▪·•▐█▪·•              "
echo "          •▀▀ ▀▀▀▀  █▪▀▀▀.▀   .▀                 "

aptitude install ejabberd

mv /etc/ejabberd/ejabberd.cfg /etc/ejabberd/ejabberd.cfg.ORIG

cat > /etc/ejabberd/ejabberd.cfg << __EJABBERD__
%%%
%%%     Debian ejabberd configuration file
%%%     This config must be in UTF-8 encoding
%%%
%%% The parameters used in this configuration file are explained in more detail
%%% in the ejabberd Installation and Operation Guide.
%%% Please consult the Guide in case of doubts, it is available at
%%% /usr/share/doc/ejabberd/guide.html

%%% This configuration file contains Erlang terms.
%%% In case you want to understand the syntax, here are the concepts:
%%%
%%%  - The character to comment a line is %
%%%
%%%  - Each term ends in a dot, for example:
%%%      override_global.
%%%
%%%  - A tuple has a fixed definition, its elements are
%%%    enclosed in {}, and separated with commas:
%%%      {loglevel, 4}.
%%%
%%%  - A list can have as many elements as you want,
%%%    and is enclosed in [], for example:
%%%      [http_poll, web_admin, tls]
%%%
%%%  - A keyword of ejabberd is a word in lowercase.
%%%    The strings are enclosed in "" and can have spaces, dots...
%%%      {language, "en"}.
%%%      {ldap_rootdn, "dc=example,dc=com"}.
%%%
%%%  - This term includes a tuple, a keyword, a list and two strings:
%%%      {hosts, ["jabber.example.net", "im.example.com"]}.
%%%

%%%   ===================================
%%%   OVERRIDE OPTIONS STORED IN DATABASE

%%
%% Override global options (shared by all ejabberd nodes in a cluster).
%%
%%override_global.

%%
%% Override local options (specific for this particular ejabberd node).
%%
%%override_local.

%%
%% Remove the Access Control Lists before new ones are added.
%%
%%override_acls.


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Options which are set by Debconf and managed by ucf

%% Admin user
{acl, admin, {user, "admin", "$(cat /var/lib/tor/hidden_service/hostname)"}}.

%% Hostname
{hosts, ["localhost","$(cat /var/lib/tor/hidden_service/hostname)"]}.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%   =========
%%%   DEBUGGING

%%
%% loglevel: Verbosity of log files generated by ejabberd.
%% 0: No ejabberd log at all (not recommended)
%% 1: Critical
%% 2: Error
%% 3: Warning
%% 4: Info
%% 5: Debug
%%
{loglevel, 0}.

%%
%% watchdog_admins: If an ejabberd process consumes too much memory,
%% send live notifications to those Jabber accounts.
%%
%%{watchdog_admins, ["bob@example.com"]}.


%%%   ================
%%%   SERVED HOSTNAMES

%%
%% hosts: Domains served by ejabberd.
%% You can define one or several, for example:
%% {hosts, ["example.net", "example.com", "example.org"]}.
%%
%% (This option is defined by debconf earlier)
%% {hosts, ["localhost"]}.

%%
%% route_subdomains: Delegate subdomains to other Jabber server.
%% For example, if this ejabberd serves example.org and you want
%% to allow communication with a Jabber server called im.example.org.
%%
%%{route_subdomains, s2s}.


%%%   ===============
%%%   LISTENING PORTS

%%
%% listen: Which ports will ejabberd listen, which service handles it
%% and what options to start it with.
%%
{listen,
 [
  {5222, ejabberd_c2s, [
			{access, c2s},
			{shaper, c2s_shaper},
			{max_stanza_size, 65536},
                        %%zlib,
			starttls, {certfile, "/etc/ejabberd/ejabberd.pem"}
		       ]},

  %%
  %% To enable the old SSL connection method (deprecated) in port 5223:
  %%
  %%{5223, ejabberd_c2s, [
  %%			{access, c2s},
  %%			{shaper, c2s_shaper},
  %%			{max_stanza_size, 65536},
  %%                    zlib,
  %%			tls, {certfile, "/etc/ejabberd/ejabberd.pem"}
  %%		       ]},

  %%{5269, ejabberd_s2s_in, [
  %%			   {shaper, s2s_shaper},
  %%			   {max_stanza_size, 131072}
  %%			  ]},

  %% External MUC jabber-muc
  %%{5554, ejabberd_service, [
  %%			    {ip, {127, 0, 0, 1}},
  %%			    {access, all},
  %%			    {shaper_rule, fast},
  %%			    {host, "muc.localhost", [{password, "secret"}]}
  %%			    ]},

  %% Jabber ICQ Transport
  %%{5555, ejabberd_service, [
  %%			    {ip, {127, 0, 0, 1}},
  %%			    {access, all},
  %%			    {shaper_rule, fast},
  %%			    {hosts, ["icq.localhost", "sms.localhost"],
  %%				       [{password, "secret"}]}
  %%			    ]},

  %% AIM Transport
  %%{5556, ejabberd_service, [
  %%			    {ip, {127, 0, 0, 1}},
  %%			    {access, all},
  %%			    {shaper_rule, fast},
  %%			    {host, "aim.localhost", [{password, "secret"}]}
  %%			    ]},

  %% MSN Transport
  %%{5557, ejabberd_service, [
  %%			    {ip, {127, 0, 0, 1}},
  %%			    {access, all},
  %%			    {shaper_rule, fast},
  %%			    {host, "msn.localhost", [{password, "secret"}]}
  %%			    ]},

  %% Yahoo! Transport
  %%{5558, ejabberd_service, [
  %%			    {ip, {127, 0, 0, 1}},
  %%			    {access, all},
  %%			    {shaper_rule, fast},
  %%			    {host, "yahoo.localhost", [{password, "secret"}]}
  %%			    ]},

  %% External JUD (internal is more powerful,
  %% but doesn't allow to register users from other servers)
  %%{5559, ejabberd_service, [
  %%			    {ip, {127, 0, 0, 1}},
  %%			    {access, all},
  %%			    {shaper_rule, fast},
  %%			    {host, "jud.localhost", [{password, "secret"}]}
  %%			    ]},

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

%%
%% max_fsm_queue: Enable limiting of lengths of "message queues"
%% for outgoing connections. Roughly speaking, each message in such
%% queues represents one XML stanza queued to be sent into
%% an output stream it is serving.
%% The default value is an atom 'undefined' which specifies no limiting.
%%
%% When specified globally, this option limits the message queue lengths
%% for all ejabberd_c2s_in and ejabberd_service listeners,
%% as well as for outgoing s2s connections.
%%
%% This option can also be specified as an option for ejabberd_c2s_in
%% and ejabberd_service listeners, in wich case it will override
%% the value of the global option.
%%
{max_fsm_queue, 1000}.

%%
%% s2s_use_starttls: Enable STARTTLS + Dialback for S2S connections.
%% Allowed values are: true or false.
%% You must specify a certificate file.
%%
{s2s_use_starttls, true}.

%%
%% s2s_certfile: Specify a certificate file.
%%
{s2s_certfile, "/etc/ejabberd/ejabberd.pem"}.

%%
%% domain_certfile: Specify a different certificate for each served hostname.
%%
%%{domain_certfile, "example.org", "/path/to/example_org.pem"}.
%%{domain_certfile, "example.com", "/path/to/example_com.pem"}.

%%
%% S2S whitelist or blacklist
%%
%% Default s2s policy for undefined hosts.
%%
%%{s2s_default_policy, allow}.

%%
%% Allow or deny communication with specific servers.
%%
%%{{s2s_host, "goodhost.org"}, allow}.
%%{{s2s_host, "badhost.org"}, deny}.

%%
%% The maximum allowed delay for retry to connect
%% after a failed connection attempt to a remote server, in seconds.
%% The default value is 300 seconds (5 minutes). 
%%
%% The reconnection algorythm works like this: if connection fails,
%% ejabberd makes an initial random delay between 1 and 15 seconds,
%% then retries, and if this attempt fails, makes another delay,
%% twice as long as previous. These attempts are performed either
%% until a successful connection is made or until the next calculated
%% delay is greated or equal than the value of s2s_max_retry_delay.
%%
%%{s2s_max_retry_delay, 300}.

%%
%% Outgoing S2S options
%%
%% Preferred address families (which to try first) and connect timeout
%% in milliseconds.
%%
%%{outgoing_s2s_options, [ipv4, ipv6], 10000}.


%%%   ==============
%%%   AUTHENTICATION

%%
%% auth_method: Method used to authenticate the users.
%% The default method is the internal.
%% If you want to use a different method,
%% comment this line and enable the correct ones.
%%
{auth_method, internal}.

%%
%% Authentication using external script
%% Make sure the script is executable by ejabberd.
%%
%%{auth_method, external}.
%%{extauth_program, "/path/to/authentication/script"}.

%%
%% Authentication using ODBC
%% Remember to setup a database in the next section.
%%
%%{auth_method, odbc}.

%%
%% Authentication using PAM
%%
%%{auth_method, pam}.
%%{pam_service, "pamservicename"}.

%%
%% Authentication using LDAP
%%
%%{auth_method, ldap}.
%%
%% List of LDAP servers:
%%{ldap_servers, ["localhost"]}.
%%
%% Encryption of connection to LDAP servers (LDAPS):
%%{ldap_encrypt, none}.
%%{ldap_encrypt, tls}.
%%
%% Port connect to LDAP server:
%%{ldap_port, 389}.
%%{ldap_port, 636}.
%%
%% LDAP manager:
%%{ldap_rootdn, "dc=example,dc=com"}.
%%
%% Password to LDAP manager:
%%{ldap_password, "******"}.
%%
%% Search base of LDAP directory:
%%{ldap_base, "dc=example,dc=com"}.
%%
%% LDAP attribute that holds user ID:
%%{ldap_uids, [{"mail", "%u@mail.example.org"}]}.
%%
%% LDAP filter:
%%{ldap_filter, "(objectClass=shadowAccount)"}.

%%
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


%%%   ==============
%%%   DATABASE SETUP

%% ejabberd uses by default the internal Mnesia database,
%% so you can avoid this section.
%% This section provides configuration examples in case
%% you want to use other database backends.
%% Please consult the ejabberd Guide for details about database creation.

%% NOTE that ejabberd in Debian supports "out of the box"
%% only mnesia (default) and ODBC storage backends.
%% Working with MySQL and PostgreSQL DB backends requires
%% building and installation of the corresponding Erlang modules,
%% not distributed as a part of ejabberd.
%% Refer to /usr/share/doc/ejabberd/README.Debian for details.

%%
%% MySQL server:
%%
%%{odbc_server, {mysql, "server", "database", "username", "password"}}.
%%
%% If you want to specify the port:
%%{odbc_server, {mysql, "server", 1234, "database", "username", "password"}}.

%%
%% PostgreSQL server:
%%
%%{odbc_server, {pgsql, "server", "database", "username", "password"}}.
%%
%% If you want to specify the port:
%%{odbc_server, {pgsql, "server", 1234, "database", "username", "password"}}.
%%
%% If you use PostgreSQL, have a large database, and need a
%% faster but inexact replacement for "select count(*) from users"
%%
%%{pgsql_users_number_estimate, true}.

%%
%% ODBC compatible or MSSQL server:
%%
%%{odbc_server, "DSN=ejabberd;UID=ejabberd;PWD=ejabberd"}.

%%
%% Number of connections to open to the database for each virtual host
%%
%%{odbc_pool_size, 10}.

%%
%% Interval to make a dummy SQL request to keep alive the connections
%% to the database. Specify in seconds: for example 28800 means 8 hours
%%
%%{odbc_keepalive_interval, undefined}.


%%%   ===============
%%%   TRAFFIC SHAPERS

%%
%% The "normal" shaper limits traffic speed to 1.000 B/s
%%
{shaper, normal, {maxrate, 1000}}.

%%
%% The "fast" shaper limits traffic speed to 50.000 B/s
%%
{shaper, fast, {maxrate, 50000}}.


%%%   ====================
%%%   ACCESS CONTROL LISTS

%%
%% The 'admin' ACL grants administrative privileges to Jabber accounts.
%% You can put as many accounts as you want.
%%
%%{acl, admin, {user, "aleksey", "localhost"}}.
%%{acl, admin, {user, "ermine", "example.org"}}.

%%
%% Blocked users
%%
%%{acl, blocked, {user, "baduser", "example.org"}}.
%%{acl, blocked, {user, "test"}}.

%%
%% Local users: don't modify this line.
%%
{acl, local, {user_regexp, ""}}.

%%
%% More examples of ACLs
%%
%%{acl, jabberorg, {server, "jabber.org"}}.
%%{acl, aleksey, {user, "aleksey", "jabber.ru"}}.
%%{acl, test, {user_regexp, "^test"}}.
%%{acl, test, {user_glob, "test*"}}.

%%
%% Define specific ACLs in a virtual host.
%%
%%{host_config, "localhost",
%% [
%%  {acl, admin, {user, "bob-local", "localhost"}}
%% ]
%%}.


%%%   ============
%%%   ACCESS RULES

%% Define the maximum number of time a single user is allowed to connect:
{access, max_user_sessions, [{10, all}]}.

%% Maximum number of offline messages that users can have:
{access, max_user_offline_messages, [{5000, admin}, {100, all}]}. 

%% This rule allows access only for local users:
{access, local, [{allow, local}]}.

%% Only non-blocked users can use c2s connections:
{access, c2s, [{deny, blocked},
	       {allow, all}]}.

%% For all users except admins used "normal" shaper
{access, c2s_shaper, [{none, admin},
		      {normal, all}]}.

%% For all S2S connections used "fast" shaper
{access, s2s_shaper, [{fast, all}]}.

%% Only admins can send announcement messages:
{access, announce, [{allow, admin}]}.

%% Only admins can use configuration interface:
{access, configure, [{allow, admin}]}.

%% Admins of this server are also admins of MUC service:
{access, muc_admin, [{allow, admin}]}.

%% All users are allowed to use MUC service:
{access, muc, [{allow, all}]}.

%% No username can be registered via in-band registration:
%% To enable in-band registration, replace 'deny' with 'allow'
% (note that if you remove mod_register from modules list then users will not
% be able to change their password as well as register).
% This setting is default because it's more safe.
{access, register, [{allow, all}]}.

%% By default frequency of account registrations from the same IP
%% is limited to 1 account every 10 minutes. To disable put: infinity
%%{registration_timeout, 600}.

%% Everybody can create pubsub nodes
{access, pubsub_createnode, [{allow, all}]}.

%%
%% Define specific Access rules in a virtual host.
%%
%%{host_config, "localhost",
%% [
%%  {access, c2s, [{allow, admin}, {deny, all}]},
%%  {access, register, [{deny, all}]}
%% ]
%%}.


%%%   ================
%%%   DEFAULT LANGUAGE

%%
%% language: Default language used for server messages.
%%
{language, "en"}.

%%
%% Set a different default language in a virtual host.
%%
%%{host_config, "localhost",
%% [{language, "ru"}]
%%}.


%%%   =======
%%%   CAPTCHA

%%
%% Full path to a script that generates the image.
%% Note that this script must be made executable
%% for the user ejabberd:ejabberd.
%%
%%{captcha_cmd, "/usr/lib/ejabberd/priv/bin/captcha.sh"}.

%%
%% Host part of the URL sent to the user.
%% The port specified must be configured as the "ejabberd_http"
%% listener which must have the "captcha" directive included
%% in its configuration (see the "LISTENING PORTS" section above).
%%
%%{captcha_host, "localhost:5280"}.


%%%   =======
%%%   MODULES

%%
%% Modules enabled in all ejabberd virtual hosts.
%%
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

%%
%% Enable modules with custom options in a specific virtual host
%%
%%{host_config, "localhost",
%% [{{add, modules},
%%   [
%%    {mod_echo, [{host, "mirror.localhost"}]}
%%   ]
%%  }
%% ]}.


%%% $Id: ejabberd.cfg.example 2497 2009-08-17 20:27:28Z cromain $

%%% Local Variables:
%%% mode: erlang
%%% End:
%%% vim: set filetype=erlang tabstop=8:
__EJABBERD__

/etc/init.d/ejabberd restart

rm /var/www/latest.tar.gz

rm /var/www/index.html

cat > /var/www/index.html << __INDEXHTML__
<!DOCTYPE html>
<html>
 <body>
<pre>
·▄▄▄▄  ▪   ▄· ▄▌          ▄▄▄      ·▄▄▄▄  ▪  ▄▄▄ .
██▪ ██ ██ ▐█▪██▌    ▪     ▀▄ █·    ██▪ ██ ██ ▀▄.▀·
▐█· ▐█▌▐█·▐█▌▐█▪     ▄█▀▄ ▐▀▀▄     ▐█· ▐█▌▐█·▐▀▀▪▄
██. ██ ▐█▌ ▐█▀·.    ▐█▌.▐▌▐█•█▌    ██. ██ ▐█▌▐█▄▄▌
▀▀▀▀▀• ▀▀▀  ▀ •      ▀█▄▀▪.▀  ▀    ▀▀▀▀▀• ▀▀▀ ▀▀▀ 
         ▄▄·       • ▌ ▄ ·. • ▌ ▄ ·. .▄▄ ·       
        ▐█ ▌▪▪     ·██ ▐███▪·██ ▐███▪▐█ ▀.       
        ██ ▄▄ ▄█▀▄ ▐█ ▌▐▌▐█·▐█ ▌▐▌▐█·▄▀▀▀█▄      
        ▐███▌▐█▌.▐▌██ ██▌▐█▌██ ██▌▐█▌▐█▄▪▐█      
        ·▀▀▀  ▀█▄▀▪▀▀  █▪▀▀▀▀▀  █▪▀▀▀ ▀▀▀▀       
    .▄▄ · ▄▄▄ .▄▄▄   ▌ ▐·▄▄▄ .▄▄▄                
    ▐█ ▀. ▀▄.▀·▀▄ █·▪█·█▌▀▄.▀·▀▄ █·              
    ▄▀▀▀█▄▐▀▀▪▄▐▀▀▄ ▐█▐█•▐▀▀▪▄▐▀▀▄               
    ▐█▄▪▐█▐█▄▄▌▐█•█▌ ███ ▐█▄▄▌▐█•█▌              
     ▀▀▀▀  ▀▀▀ .▀  ▀. ▀   ▀▀▀ .▀  ▀              
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
