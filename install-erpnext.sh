#!/bin/bash
# GET ALL USER INPUT
echo "Username (eg:- give me a name)?"
read username
sleep 2;
echo "ErpNext Installing... it will take > 15 Min"
sleep 3;
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install python3-minimal build-essential python3-setuptools pwgen -y
sudo wget https://raw.githubusercontent.com/frappe/bench/master/playbooks/install.py
ip=$(curl -s -X GET https://checkip.amazonaws.com)
password=`pwgen -s 14 1`
export LC_ALL=C.UTF-8
sudo -H python3 install.py --production --site localhost --user $username --mysql-root-password $password --admin-password $password --bench-name $username
echo
echo
tput setaf 2; echo "Here is your ErpNext Credentials"
echo "--------------------------------"
echo "Website:    http://$ip"
echo
tput setaf 4; echo "Admin Name:       Administrator"
tput setaf 4; echo "Admin Password:   $password"
echo "--------------------------------"
tput setaf 4; echo "Ubuntu Login Name:$username"
tput setaf 4; echo "Ubuntu Password  :$password"
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
