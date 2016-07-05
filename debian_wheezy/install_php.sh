sudo apt-get install vim -y
sudo apt-get install php5-mysql php5-curl -y

sudo su
echo "date.timezone = UTC " >> /etc/php5/cli/php.ini
echo "date.timezone = UTC " >> /etc/php5/fpm/php.ini