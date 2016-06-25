#!/bin/sh

#sudo su

#php5.6
echo "deb http://packages.dotdeb.org wheezy-php56 all" >> /etc/apt/sources.list.d/dotdeb.list
echo "deb-src http://packages.dotdeb.org wheezy-php56 all" >> /etc/apt/sources.list.d/dotdeb.list
wget http://www.dotdeb.org/dotdeb.gpg -O- | apt-key add -
apt-get update
apt-get install php5-cli php5-fpm -y

#nginx
echo "deb http://nginx.org/packages/debian/ wheezy nginx" >> /etc/apt/sources.list
echo "deb-src http://nginx.org/packages/debian/ wheezy nginx" >> /etc/apt/sources.list
wget http://nginx.org/keys/nginx_signing.key -O- | apt-key add -
apt-get update
apt-get install nginx -y

#mysql
apt-get install mysql-server -y

#git
apt-get install git -y