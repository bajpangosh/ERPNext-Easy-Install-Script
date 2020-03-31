#!/bin/bash
# GET ALL USER INPUT
echo "Username (eg. erpnext)?"
read username
echo "Password (eg. put a strong password)?"
read userpass
echo "Installing................."
sleep 1;
#sudo apt-get -y update && sudo apt-get upgrade
#sudo apt-get -y install python3-setuptools python3-minimal redis-server build-essential pwgen
#sudo adduser -p `mkpasswd "$pass"` $username --gecos "First Last,RoomNumber,WorkPhone,HomePhone"
#sudo adduser $username --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
useradd -p `mkpasswd "$userpass"` -d /home/"$username" -m -g users -s /bin/bash "$username"
sudo usermod -aG sudo $username
sudo su - $username
sudo wget https://raw.githubusercontent.com/frappe/bench/master/playbooks/install.py
#password=`pwgen -s 14 1`
#export LC_ALL=C.UTF-8
#sudo -H python3 install.py --production --site localhost --user $username --mysql-root-password $password --admin-password $adminpass --bench-name $username
