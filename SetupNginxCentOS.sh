#!/bin/bash

# Add Repository Nginx
sudo yum -y install epel-release

# Install Nginx.
sudo yum -y install nginx

# Start Nginx
sudo systemctl start nginx
sudo systemctl enable nginx

## Install PHP-FPM 7.1 for Nginx
sudo rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
sudo yum -y install php71w php71w-curl php71w-common php71w-cli php71w-mysql php71w-mbstring php71w-fpm php71w-xml php71w-pdo php71w-zip

sudo systemctl enable php-fpm
sudo systemctl start php-fpm

# install composer (Laravel Dependencies)
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/bin --filename=composer

# install git
sudo yum -y install git

# install laravel
## https://www.hugeserver.com/kb/install-laravel-centos-nginx/ (pakai ini lebih simpel)
## https://tecadmin.net/install-laravel-framework-on-centos/
## https://www.howtoforge.com/tutorial/how-to-install-laravel-5x-with-nginx-and-php-fpm-7-on-centos-7/
## https://devops.ionos.com/tutorials/install-the-laravel-php-framework-on-centos-7/
## https://tecadmin.net/install-laravel-framework-on-centos/
## https://linuxize.com/post/install-php-7-on-centos-7/#configuring-php-7-x-to-work-with-nginx
## https://stackoverflow.com/questions/43408604/php7-install-ext-dom-issue
sudo mkdir -p /var/www
cd /var/www
sudo git clone https://github.com/laravel/laravel.git
