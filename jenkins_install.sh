#!/usr/bin/env bash
# This script install Jenkins in your Ubuntu System
#
# This script must be run as root:
#   $ sudo ./jenkins_install.sh

sudo apt-get update
sudo apt-get install openjdk-8-jdk

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install jenkins
sudo apt install git
