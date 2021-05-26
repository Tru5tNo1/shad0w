#!/bin/bash

# install stuff we need
apt-get update -y
apt-get install -y python3 python3-pip python3-openssl gcc-mingw-w64 nasm upx binutils wget apt-transport-https procps mono-complete less metasploit-framework

wget http://ftp.us.debian.org/debian/pool/main/i/icu/libicu57_57.1-6+deb9u4_amd64.deb
sudo dpkg -i libicu57_57.1-6+deb9u4_amd64.deb
sudo apt install dotnet-sdk-3.1

python3 -m pip install -r /root/shad0w/requirements.txt

# install dotnet
wget https://packages.microsoft.com/config/ubuntu/16.04/packages-microsoft-prod.deb -O /tmp/packages-microsoft-prod.deb
dpkg -i /tmp/packages-microsoft-prod.deb
apt update -y
apt install dotnet-sdk-2.2 -y
