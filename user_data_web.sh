#!/bin/bash
yum update -y
sudo amazon-linux-extras install epel -y
sudo yum update -y
sudo amazon-linux-extras install -y php7.2
sudo yum install httpd -y
service start httpd
yum install git -y
cd /var/www/html/
git clone https://github.com/Zippyops/phpcodelogin.git
cd phpcodelogin/
mv * /var/www/html/
yum install wget -y
yum install mysql -y
yum install mysql-server -y
service mysqld restart
systemctl restart httpd
cd /var/www/html/
mysql -h wpdb.cdy9kerizbgn.ap-south-1.rds.amazonaws.com -u maharshi -p mypassword -D wordpress_db < table.sql