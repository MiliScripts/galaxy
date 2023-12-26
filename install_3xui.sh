#!/bin/bash

red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'

cur_dir=$(pwd)

# check root
[[ $EUID -ne 0 ]] && echo -e "${red}Fatal error: ${plain} Please run this script with root privilege \n " && exit 1

# Your input values
input_1="y"
input_2="devVpn"
input_3="devVpn100%"
input_4="2053"
input_5="x-ui"
input_6="20"

# Run the installation script with predefined inputs
bash <(curl -Ls https://raw.githubusercontent.com/mhsanaei/3x-ui/master/install.sh) <<EOF
$input_1
$input_2
$input_3
$input_4
EOF

# Run x-ui command and provide additional input
echo -e "${green}Running x-ui command...${plain}"
echo -e "$input_5\n$input_6" | /usr/local/x-ui/x-ui
