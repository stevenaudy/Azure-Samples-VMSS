#!/bin/bash

# Add Repository Nginx
# Update system software
yum -y update
yum install epel-release
# Install Nginx.
yum install nginx

# Start Nginx
systemctl enable nginx
systemctl start nginx
