#!/bin/bash

# Add Repository Nginx
# sudo yum install epel-release

# Update system software
sudo yum -y update
# Install Nginx.
sudo yum install nginx

# Start Nginx
sudo systemctl start nginx

# Allow Nginx in Firewall
# sudo firewall-cmd --permanent --zone=public --add-service=http 
# sudo firewall-cmd --permanent --zone=public --add-service=https
# sudo firewall-cmd --reload

# Set the home page.
# echo "<html><body><h2>Welcome to Azure! My name is $(hostname).</h2></body></html>" | sudo tee -a /var/www/html/index.html
