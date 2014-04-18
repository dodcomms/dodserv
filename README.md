# DIY or DIE Server

#### Self-hosted collaboration, communication and information sharing infrastructure for activists

### The DIY or DIE Server is:

* an alternative to cloud hosted services
* a collection of free and open source operating systems, chat servers, forums, web sites and wikis
* self-hosted (on a normal computer, USB stick or SD card) behind Tor hidden services [1](https://www.torproject.org/docs/hidden-services.html.en "Hidden Service Protocol")
* resistant to surveillance and censorship
* is free and unencumbered software released into the public domain [2](http://unlicense.org/ "unlicense.org")
* easy to install and maintain

### The DIY or DIE Server allows:

* activists to share information over public networks without compromising their privacy or security
* activists to communicate with each other without any third party being wise to their activity or even the knowledge that they are communicating with each other 

## What you will need

use the format here http://www.raspberrypi.org/help/quick-start-guide/

### Required

* Computer
* Display and connectivity cables
* Keyboard
* Power supply
* Internet connection

### Not essential but helpful to have

* USB Stick
* SD Card

## Install DIY or DIE Server

### Debian Installation

Boot Debian and wait for the login prompt
```
Debian GNU/Linux 7 debian tty1
debian login:
```
Login as `root`

*You will not see anything appear when you type the password*
```
Debian GNU/Linux 7 debian tty1
debian login: root
Password:
```
Wait for the command line prompt
```
root@debian:~# _
```
At the prompt, enter `nano /etc/apt/sources.list`
```
root@debian:~# nano /etc/apt/sources.list
```
*Something like this will appear*
```
# deb cdrom:[Debian GNU/Linux 7.4.0 _Wheezy_ - Official i386 DVD Binary-1 20140208-12:26]/ wheezy contrib main

deb cdrom:[Debian GNU/Linux 7.4.0 _Wheezy_ - Official i386 DVD Binary-1 20140208-12:26]/ wheezy contrib main

deb http://ftp.uk.debian.org/debian/ wheezy main
deb-src http://ftp.uk.debian.org/debian/ wheezy main

deb http://security.debian.org/ wheezy/updates main contrib
deb-src http://security.debian.org/ wheezy/updates main contrib

# wheezy-updates, previously known as 'volatile'
deb http://ftp.uk.debian.org/debian/ wheezy-updates main contrib
deb-src http://ftp.uk.debian.org/debian/ wheezy-updates main contrib
```
Use the `Arrow Keys` to navigate the text

Put a `#` before the lines begining with `deb cdrom:` so they look like this
```
# deb cdrom:[Debian GNU/Linux 7.4.0 _Wheezy_ - Official i386 DVD Binary-1 20140208-12:26]/ wheezy contrib main

# deb cdrom:[Debian GNU/Linux 7.4.0 _Wheezy_ - Official i386 DVD Binary-1 20140208-12:26]/ wheezy contrib main
```
Use `^Ctrl`+`X` (Control-X) to exit
```
Save modified buffer (ANSWERING "No" WILL DESTROY CHANGES) ?  
```
`Y` to save 
```
File Name to Write: /etc/apt/sources.list
```
`Enter` (Return Key) to return to the command line prompt
```
root@debian:~# _
```
At the prompt, enter `aptitude install tor unzip`
```
root@debian:~# aptitude install tor unzip
```
Type `Y` to continue
```
Do you want to continue? [Y/n/?] y
```
At the prompt, enter `usewithtor wget https://github.com/dodcomms/dodserv/archive/master.zip`
```
root@debian:~# usewithtor wget https://github.com/dodcomms/dodserv/archive/master.zip
```
At the prompt, enter `unzip master.zip`
```
root@debian:~# unzip master.zip
```
At the prompt, enter `chmod 744 dodserv-master/deb*.sh`
```
root@debian:~# chmod 744 dodserv-master/deb*.sh
```
At the prompt, enter `dodserv-master/deb-latest.sh`
```
root@debian:~# dodserv-master/deb-latest.sh
```
*Something like this will appear*
```
________  .________.___.                ________  .______________
\______ \ |   \__  |   |   ___________  \______ \ |   \_   _____/
 |    |  \|   |/   |   |  /  _ \_  __ \  |    |  \|   ||    __)_ 
 |    `   \   |\____   | (  <_> )  | \/  |    `   \   ||        \
/_______  /___|/ ______|  \____/|__|    /_______  /___/_______  /
  ______\/_    \/                               \/            \/ 
 /   _____/ ______________  __ ___________                       
 \_____  \_/ __ \_  __ \  \/ // __ \_  __ \                      
 /        \  ___/|  | \/\   /\  ___/|  | \/                      
/_______  /\___  >__|    \_/  \___  >__|                         
        \/     \/                 \/                             
PING torproject.org (93.95.227.222) 56(84) bytes of data.
```
*Text will scroll until something like this appears (several times)*
```
Do you want to continue? [Y/n/?]
```
Type `Y` to continue

During the MySQL installation, a blue screen will appear and ask for a `New password for the MySQL "root" user`

```
  ┌────────────────────┤ Configuring mysql-server-5.5 ├─────────────────────┐   
  │ While not mandatory, it is highly recommended that you set a password   │   
  │ for the MySQL administrative "root" user.                               │   
  │                                                                         │   
  │ If this field is left blank, the password will not be changed.          │   
  │                                                                         │   
  │ New password for the MySQL "root" user:                                 │   
  │                                                                         │   
  │ _______________________________________________________________________ │   
  │                                                                         │   
  │                                 <Ok>                                    │   
  │                                                                         │   
  └─────────────────────────────────────────────────────────────────────────┘   
```
Carefully enter a password, press `Tab` to navigate to `<Ok>` and press `Enter` to continue

```
                ┌──────┤ Configuring mysql-server-5.5 ├───────┐                 
                │                                             │                 
                │                                             │                 
                │ Repeat password for the MySQL "root" user:  │                 
                │                                             │                 
                │ ___________________________________________ │                 
                │                                             │                 
                │                   <Ok>                      │                 
                │                                             │                 
                └─────────────────────────────────────────────┘                 
```
Carefully repeat the password, press `Tab` to navigate to `<Ok>` and press `Enter` to continue

* Remember your `MySQL "root" user password`, you will need it in a moment

During the PHP5 installation, something like this may appear
```
__________  ___ _____________.________
\______   \/   |   \______   \   ____/
 |     ___/    ~    \     ___/____  \ 
 |    |   \    Y    /    |   /       \
 |____|    \___|_  /|____|  /______  /
                 \/                \/ 
The following NEW packages will be installed:
  apache2-mpm-prefork{ab} libapache2-mod-php5 libonig2{a} libqdbm14{a} php5 
  php5-cli{a} php5-common{a} php5-mysql 
0 packages upgraded, 8 newly installed, 0 to remove and 0 not upgraded.
Need to get 6,174 kB of archives. After unpacking 18.1 MB will be used.
The following packages have unmet dependencies:
 apache2-mpm-prefork : Conflicts: apache2-mpm which is a virtual package.
 apache2-mpm-worker : Conflicts: apache2-mpm which is a virtual package.
The following actions will resolve these dependencies:

     Remove the following packages:
1)     apache2-mpm-worker          



Accept this solution? [Y/n/q/?] 
```
Type `Y` to continue

During the Wordpress installation, this will appear

*Be sure to use the MySQL "root" user password*

```
###################
#                 #
# MySQL root user #
#                 #
###################
Enter password: 
Repeat password:
```
When the installation is finished, this will appear (your `.onion` address will be different)
```
  ________           __          
 /  _____/  ____   _/  |_  ____  
/   \  ___ /  _ \  \   __\/  _ \ 
\    \_\  (  <_> )  |  | (  <_> )
 \______  /\____/   |__|  \____/ 
        \/                       
###################################
###################################
##                               ##
## http://s64ltpbbrclhhk3v.onion ##
##                               ##
###################################
###################################
__________ __    ____   ____    .__.__    __    ._.
_   _____//  |_  \   \ /   /___ |__|  | __\/_   | |
|    __)_\   __\  \   Y   /  _ \|  |  | \__  \  | |
|        \|  |     \     (  <_> )  |  |__/ __ \_ \|
_______  /|__|      \___/ \____/|__|____(____  / __
       \/                                    \/  \/
root@debian:~# _
```
Simply enter the `.onion` address into a Tor browser

## References

1. [Tor: Hidden Service Protocol](https://www.torproject.org/docs/hidden-services.html.en "Hidden Service Protocol")
2. [Unlicense Yourself](http://unlicense.org/ "unlicense.org") - Set Your Code Free

## External links

* [torproject.org](https://www.torproject.org/ "torpropject.org") - Anonyminty Online
* [debian.org](http://www.debian.org/ "debian.org") - The Universal Operating System

* [example](http://url.com/ "Title")
