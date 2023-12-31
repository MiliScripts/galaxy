#!/bin/bash
# Script to automate the installation and setup of Certbot

# Command 1: Install software-properties-common
sudo apt install software-properties-common

# Command 2: Add Certbot repository
sudo add-apt-repository ppa:certbot/certbot
# Input: Press Enter to continue

# Command 3: Update and install Certbot
sudo apt-get update
sudo apt-get install certbot -y

# Command 4: Obtain the SSL certificate
sudo certbot certonly --standalone --preferred-challenges http --agree-tos --email alfredforex.bot@gmail.com -d gr5.bandaripro.site 
# Input: Press Enter to continue
