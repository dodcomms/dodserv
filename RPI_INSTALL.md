Raspberry Pi Installation
==
<b>Install Arch Linux ARM on the SD card</b>

Download the zip file containing the dd image

<pre><code>wget http://archlinuxarm.org/os/ArchLinuxARM-rpi-latest.zip</code></pre>

Unzip the file

<pre><code>unzip ArchLinuxARM-rpi-latest.zip</code></pre>

Write this image to the target SD card. The SD card will need to be 4GB or larger.

Replacing sdX with the location of the SD card, run:

<pre><code>dd bs=1M if=<i>/path/to/</i>ArchLinuxARM*.img of=/dev/sd<i>X</i></code></pre>

Eject the card from your computer, insert into the Raspberry Pi, and power it on.

==
<b>Configure the Raspberry Pi</b>

Login with the default username 'root' and password 'root'

Configure the keyboard

<pre><code>loadkeys <i>uk</i></code></pre>

Update the system and install "unzip"

<pre><code>pacman -Syu unzip</code></pre>

Download the "master.zip"

<pre><code>wget https://github.com/kar5t3n/ab/archive/master.zip</code></pre>

Unzip the archive

<pre><code>unzip master.zip</code></pre>

Change to the ab-master directory

<pre><code>cd ab-master/</code></pre>

Change permissions

<pre><code>chmod 744 *.sh</code></pre>

Install and configure the hidden service

<pre><code>./RPi_xmpp.sh</code></pre>

Follow the prompts until you are asked to change your password

NOTE: Make a secure record of the Hostname and Admin Account

Restart the system

<pre><code>reboot</code></pre>

The monitor and keyboard can be removed

You do not need to login for the hidden service to activate

==
<b>To view the Hostname and Admin Account</b>

Login with the default username 'root' and new password

<pre><code>host</code></pre>

==
For more information, visit:

http://archlinuxarm.org

http://www.raspberrypi.org

http://torproject.org

http://prosody.im

<pre><code></code></pre>
