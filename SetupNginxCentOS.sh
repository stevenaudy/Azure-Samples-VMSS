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

## https://www.howtoforge.com/tutorial/how-to-install-laravel-5x-with-nginx-and-php-fpm-7-on-centos-7/
