#!/bin/bash

# Learning bash scripting  #

echo " we are removing apache2 server and content from tooplate.com"

echo "STOP APACHE2 and CHECK STATUS  " 
sudo systemctl status apache2
sudo systemctl is-enabled apache2
sudo systemctl  disable apache2
sudo systemctl stop apache2
sudo systemctl mask apache2

# UN INSTALL 
echo " UNINSTALLING APACHE2 "
sudo apt remove apache2 





#Remove content in var/
echo " removing conntent in vr www html"  
sudo rm -rf /var/www/html/*

# check content in var/www/html
echo "list the content in var www html" 
sudo ls /var/www/html/



