#!/usr/bin/sh
echo sudo yum -y install epel-release
echo sudo yum -y install nginx
echo sudo systemctl start nginx
echo sudo systemctl enable nginx
echo sudo rpm -Uvh https://mirror.webtatic.com/yum/el7/webtatic-release.rpm
echo sudo yum -y install php71w php71w-curl php71w-common php71w-cli php71w-mysql php71w-mbstring php71w-fpm php71w-xml php71w-pdo php71w-zip
echo cd ~
echo https://github.com/stevenaudy/Laravel-config.git
echo cd Laravel-config/
echo sudo cp -R php.ini /etc/
echo sudo cp -R www.conf /etc/php-fpm.d/
echo sudo systemctl start php-fpm
echo sudo systemctl enable php-fpm
echo curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/bin --filename=composer
echo sudo mkdir -p /var/www/laravel
echo sudo cp -R laravel.conf /etc/nginx/conf.d/
echo sudo systemctl restart nginx
echo cd /var/www/laravel/
echo sudo composer create-project laravel/laravel
echo sudo chown -R nginx:root /var/www/laravel
echo chmod 755 /var/www/laravel/laravel/storage
echo sudo setenforce permissive
