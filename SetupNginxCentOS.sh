#!/bin/bash

# Update system software
sudo yum -y update

# Add Repository Nginx
sudo yum -y install epel-release

# Install Nginx.
sudo yum -y install nginx

# Start Nginx
sudo systemctl enable nginx
sudo systemctl start nginx
sudo systemctl enable firewalld
sudo systemctl start firewalld
sudo firewall-cmd --zone=public --permanent --add-service=http
sudo firewall-cmd --zone=public --permanent --add-service=https
sudo firewall-cmd --reload

## Setup Laravel
sudo rpm -Uvh http://dl.fedoraproject.org/pub/epel/7/x86_64/Packages/e/epel-release-7-11.noarch.rpm
sudo rpm -Uvh http://rpms.famillecollet.com/enterprise/remi-release-7.rpm

# install php
sudo rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
sudo yum install -y php71w php71w-curl php71w-common php71w-cli php71w-mysql php71w-mbstring php71w-fpm php71w-xml php71w-pdo php71w-zip
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
sudo mkdir -p /var/www
cd /var/www
sudo git clone https://github.com/laravel/laravel.git
