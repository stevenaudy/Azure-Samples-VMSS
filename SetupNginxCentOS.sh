#!/bin/bash

sudo yum -y install epel-release
sudo yum -y install nginx

sudo systemctl start nginx
sudo systemctl enable nginx

sudo rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
sudo yum -y install php71w php71w-curl php71w-common php71w-cli php71w-mysql php71w-mbstring php71w-fpm php71w-xml php71w-pdo php71w-zip

cd ~
https://github.com/stevenaudy/Laravel-config.git
cd Laravel-config/
sudo cp -R php.ini /etc/
sudo cp -R www.conf /etc/php-fpm.d/
sudo systemctl start php-fpm
sudo systemctl enable php-fpm
curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/bin --filename=composer
sudo mkdir -p /var/www/laravel
sudo cp -R laravel.conf /etc/nginx/conf.d/
sudo systemctl restart nginx
cd /var/www/laravel/
sudo composer create-project laravel/laravel
sudo chown -R nginx:root /var/www/laravel
chmod 755 /var/www/laravel/laravel/storage
sudo setenforce permissive
