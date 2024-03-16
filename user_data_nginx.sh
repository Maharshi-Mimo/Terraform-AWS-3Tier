#!/bin/bash
yum update -y
sudo amazon-linux-extras install epel -y
yum update -y
yum install wget -y
yum install nginx -y
yum install git -y
service nginx start
rm -rf /etc/nginx/nginx.conf
cd /etc/nginx/
wget https://raw.githubusercontent.com/Zippyops/phpcodelogin/main/nginx.conf
systemctl restart nginx