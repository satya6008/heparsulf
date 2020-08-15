#!/bin/bash

# Learning bash scripting  #

svr="apache2"
url="https://www.tooplate.com/zip-templates/2114_pixie.zip"
dest="/var/www/html/"
dir="2114_pixie"

rm -rf $dest*
echo " we are setting up website from tooplate.com"

echo "STEP 1 -------------------------------------------Installing dependencies " 
sudo apt-get update
sudo apt install apache2 wget unzip -y

# START AND ENABLE SVC
echo " STEP 2 ---------------------------------------------Start and ENable Svc "
echo "svr is '$svr' apache" 
sudo systemctl start $svr
sudo systemctl enable $svr

# Download artifact

echo " STEP 3 ----------------------------------------download and extract artifact"
echo "url is '$url' url is "
cd /tmp/
wget $url
#echo $dir
#echo $dest
unzip -o $dir.zip
cp -r /tmp/$dir/* $dest

#Bounce Apache after artifact deployment
echo " STEP 4 ----------------------------------------- Restart SVR "
#echo " Restart apache2 SVC"
sudo systemctl restart $svr

#Remove Stale Data 
sudo rm -rf /tmp/$dir*

# check status of webserver
sudo systemctl status $svr


