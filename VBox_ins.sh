#!/bin/bash

sudo yum update

sudo yum install –y patch gcc kernel-headers kernel-devel make perl wget

sudo wget http://download.virtualbox.org/virtualbox/rpm/el/virtualbox.repo -P /etc/yum.repos.d

sudo yum install VirtualBox-6.1

sudo systemctl status vboxdrv

wget https://releases.hashicorp.com/vagrant/2.2.14/vagrant_2.2.14_x86_64.rpm

sudo yum install vagrant_2.2.14_x86_64.rpm

rm vagrant_2.2.14_x86_64.rpm