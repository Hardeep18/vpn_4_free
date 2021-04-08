#!/bin/bash

clear
echo "   ___         _    ___  ___ ____   "
echo "  / __|___ _ _| |_ / _ \/ __|__  |  "
echo " | (__/ -_) ' \  _| (_) \__ \ / /   "
echo "  \___\___|_||_\__|\___/|___//_/    "
echo " OpenVPN Access Server With Unlimited License BY Hardeep"

yum update -y
yum install wget -y
yum install net-tools -y
git clone https://github.com/Hardeep18/vpn_4_free.git
cd vpn_4_free
rpm -i ./open_vpn_package/openvpn-as-2.5-CentOS7.x86_64.rpm
cd /usr/local/openvpn_as/lib/python2.7/site-packages/
rm pyovpn-2.0-py2.7.egg
cp ~/vpn_4_free/open_vpn_package/pyovpn-2.0-py2.7.egg /usr/local/openvpn_as/lib/python2.7/site-packages/
cd /usr/local/openvpn_as/bin
./ovpn-init


echo "=========================DONE=============================="
echo "SETUP ADMIN PASSWORD"

passwd openvpn


echo "=========================DONE=============================="

echo "===================WhatsApp Help +1 731 203 2777 ============="