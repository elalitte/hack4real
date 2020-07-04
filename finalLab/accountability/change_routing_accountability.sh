#!/bin/bash
ip r del default
ip r add default via 172.16.201.254
useradd eric -s /bin/bash -p '$6$T73hzE5n$gljG8/8Ze1AWv9/AcIoZ/ZhvIhyAwN06v80Ezwm.RrUBtaBOXSjOURy53vrfm6NH5Epwnc5K1MAYt8mp4wgrx.'
apt update
apt install -y apache2 openssh-server
apache2ctl start
rm -rf /var/www/html
ln -s /root/html/ /var/www/
mkdir /run/sshd
/usr/sbin/sshd -D
