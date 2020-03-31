#!/bin/bash
# GET ALL USER INPUT
echo "Username (eg. created username pls)?"
read username
echo "Password (eg. and password)?"
read password
echo "ErpNext Installing................."
sudo wget https://raw.githubusercontent.com/frappe/bench/master/playbooks/install.py
export LC_ALL=C.UTF-8
sudo -H python3 install.py --production --site localhost --user $username --mysql-root-password $password --admin-password $password --bench-name $username
