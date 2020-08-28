#!/usr/bin/env bash

# install requirements
sudo apt-get update && sudo apt-get upgrade
sudo apt-get install apache2 mysql-client mysql-server
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt-get update

# python
sudo apt-get install python3.7 python3.7-dev
curl https://bootstrap.pypa.io/get-pip.py | sudo python3.7

# wsgi
sudo apt-get install apache2 apache2-dev
pip3.7 install mod_wsgi

# mysql for python
sudo apt-get install python3-dev default-libmysqlclient-dev build-essential
pip3 install mysqlclient
sudo apt-get install python3-pymysql

# setup git hub
git config user.email "naveen.ailawadi91@gmail.com"
git config user.name "Naveen Ailawadi"

# full docs: https://pythonprogramming.net/basic-flask-website-tutorial/
# will need these ^ to set up the manual stuff
