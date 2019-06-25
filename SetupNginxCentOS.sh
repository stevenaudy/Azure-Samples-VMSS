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
firewall-cmd --zone=public --permanent --add-service=http
firewall-cmd --zone=public --permanent --add-service=https
firewall-cmd --reload
