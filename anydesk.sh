#!/bin/bash
read -p "enter your macine password "
sudo apt update && sudo apt upgrade -y 
wget https://github.com/Gitone13/Dependencies/raw/main/suraj-anydesk.deb
sudo dpkg -i suraj-anydesk.deb 
sudo rm suraj-anydesk.deb 
sudo apt --fix-broken install -y 
echo " installation of anydesk complete "
gsettings set org.gnome.desktop.background picture-uri https://raw.githubusercontent.com/ranjanjyoti152/opencvproxpc/main/Wallpaper-01.jpg
echo " setting Access Password = prox@123 "
echo prox@123 | sudo anydesk --set-password 
echo " viewing Anydesk id "
sudo anydesk --get-id 
echo " THANK YOU "
