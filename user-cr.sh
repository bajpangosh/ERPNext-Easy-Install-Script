#!/bin/bash
# GET ALL USER INPUT
echo "Username (eg. create a username for erpnext)?"
read username
echo "Password (eg. put a strong password)?"
read userpass
echo "User Creation................."
sleep 1;
sudo apt-get -y update && sudo apt-get upgrade
useradd -p `mkpasswd "$userpass"` -d /home/"$username" -m -g users -s /bin/bash "$username"
sudo usermod -aG sudo $username
sudo su - $username
