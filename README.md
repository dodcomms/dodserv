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

## References

1. [Tor: Hidden Service Protocol](https://www.torproject.org/docs/hidden-services.html.en "Hidden Service Protocol")
2. [Unlicense Yourself](http://unlicense.org/ "unlicense.org") - Set Your Code Free

## External links

* [torproject.org](https://www.torproject.org/ "torpropject.org") - Anonyminty Online
* [debian.org](http://www.debian.org/ "debian.org") - The Universal Operating System

* [example](http://url.com/ "Title")
