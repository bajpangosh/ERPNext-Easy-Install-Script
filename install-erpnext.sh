#!/bin/bash
# GET ALL USER INPUT
echo "Username (eg:- give me a name)?"
read username
echo "ErpNext Installing...it will take 15 Min"
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install python3-minimal build-essential python3-setuptools -y
sudo wget https://raw.githubusercontent.com/frappe/bench/master/playbooks/install.py
password=`pwgen -s 14 1`
export LC_ALL=C.UTF-8
sudo -H python3 install.py --production --site localhost --user $username --mysql-root-password $password --admin-password $password --bench-name $username
echo
echo
tput setaf 2; echo "Here is your ErpNext Credentials"
echo "--------------------------------"
echo "Website:    http://your droplet ip"
echo
tput setaf 4; echo "Admin Name:       Administrator"
tput setaf 4; echo "Admin Password:   $password"
tput setaf 4; echo "Login Name:       $username"
echo "--------------------------------"
tput sgr0
echo
echo
tput setaf 3;  echo "ErpNext Installation & configuration succesfully finished."
echo
echo "Twitter @bajpangosh"
echo "E-mail: support@kloudboy.com"
echo "Bye! Your boy KLOUDBOY!"
tput sgr0
