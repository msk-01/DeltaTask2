#!/bin/bash
sudo apt-get install apache2
bash webpages.sh
cp /home/ChiefCommander/attendance_report /var/www/ChiefCommander
cp delta.conf /etc/apache2/sites-available
cp .htaccess /var/www
echo "127.0.1.1  www.soldier.io" >> /etc/hosts
cd /etc/apache2/sites-available

a2ensite delta.conf
a2enmod rewrite
systemctl restart apache2
