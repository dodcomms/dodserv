cd /etc/prosody/

cp /etc/prosody/prosody.cfg.lua.ORIG  /etc/prosody/prosody.cfg.lua

sed -i.bak s/'admins = { }'/'admins = { "root@$(cat /var/lib/tor/hidden_service/hostname)" }'/g prosody.cfg.lua

sed -i.bak s/'allow_registration = false;'/'allow_registration = true;'/g prosody.cfg.lua

sed -i.bak s/'--c2s_require_encryption = false'/'c2s_require_encryption = true'/g prosody.cfg.lua

sed -i.bak s/'authentication = "internal_plain"'/'authentication = "internal_hashed"'/g prosody.cfg.lua

sed -i.bak s/'info = "/var/log/prosody/prosody.log";'/'--info = "/var/log/prosody/prosody.log";'/g  prosody.cfg.lua

sed -i.bak s/'error = "/var/log/prosody/prosody.err";'/'--error = "/var/log/prosody/prosody.err";'/g  prosody.cfg.lua

sed -i.bak s/'{ levels = { "error" }; to = "syslog";  };'/'--{ levels = { "error" }; to = "syslog";  };'/g prosody.cfg.lua

sed -i.bak s/'VirtualHost "example.com"'/'VirtualHost "$(cat /var/lib/tor/hidden_service/hostname)"'/g prosody.cfg.lua

sed -i.bak s/'enabled = false -- Remove this line to enable this host'/'disallow_s2s = true'/g prosody.cfg.lua

sed -i.bak s/'key = "/etc/prosody/certs/localhost.key";'/'key = "/etc/prosody/certs/$(cat /var/lib/tor/hidden_service/hostname).key";'/g prosody.cfg.lua

sed -i.bak s/'certificate = "/etc/prosody/certs/localhost.cert";'/'certificate = "/etc/prosody/certs/$(cat /var/lib/tor/hidden_service/hostname).cert";'/g prosody.cfg.lua

sed -i.bak s/'--Component "conference.example.com" "muc"'/'Component "conference.$(cat /var/lib/tor/hidden_service/hostname)" "muc"'/g  prosody.cfg.lua
