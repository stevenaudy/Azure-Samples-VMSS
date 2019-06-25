#!/bin/bash

# Add Repository Nginx
# Update system software
sudo yum -y update
sudo yum install epel-release
# Install Nginx.
sudo yum install nginx

# Start Nginx
sudo systemctl enable nginx
sudo systemctl start nginx
