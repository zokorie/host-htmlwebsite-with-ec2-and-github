#!/bin/bash
sudo su
yum update -y
yum install -y httpd
cd /var/www/html
wget https://github.com/zokorie/mole/archive/master.zip -O webfiles.zip
unzip webfiles.zip 
cp -r mole-main/* /var/www/html/
rm -rf mole-main webfiles.zip
systemctl enable httpd 
systemctl start httpd