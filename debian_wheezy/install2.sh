#composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('SHA384', 'composer-setup.php') === 'e115a8dc7871f15d853148a7fbac7da27d6c0030b848d9b3dc09e2a0388afed865e6a3d6b3c0fad45c48e2b5fc1196ae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php
php -r "unlink('composer-setup.php');"
sudo mv composer.phar /usr/local/bin/composer

#proj
sudo mkdir /home/www
cd /home/www
git clone https://maxcgit@bitbucket.org/maxprivate/<src>.git <src>.com
cd <src>.com/
chmod 777 var/cache/ var/logs/ web/ app/AppCache.php
cp app/config/parameters.yml.dist app/config/parameters.yml
vim app/config/parameters.yml

##??
#composer update --lock

php bin/console doctrine:database:create
