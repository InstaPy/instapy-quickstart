#!/bin/bash
# Simple installation script for Linux

echo "Unix InstaPy Setup"
echo =============================================================================================
arch=$(getconf LONG_BIT)
kernel=$(uname)
echo "Installing depedencies..."
if [ $kernel == "Darwin" ]; then
  echo "MacOS System detected"
else
  sudo apt-get update
  sudo apt-get -y upgrade
  sudo apt-get -y install unzip python3-pip python3-dev build-essential libssl-dev libffi-dev xvfb
  sudo pip3 install --upgrade pip
  pip install clarifai --upgrade
  export LANGUAGE=en_US.UTF-8
  export LANG=en_US.UTF-8
  export LC_ALL=en_US.UTF-8
  locale-gen en_US.UTF-8
  sudo dpkg-reconfigure locales
  sudo pip3 install --upgrade pip
  pushd ~
  wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
  sudo dpkg -i google-chrome-stable_current_amd64.deb
  sudo apt-get install -y -f
  sudo rm google-chrome-stable_current_amd64.deb
  pushd -0
  
  arch=$(uname -m)
  if [ $arch == "x86_64" ]; then
    wget https://ftp.mozilla.org/pub/firefox/releases/68.0/linux-x86_64/en-US/firefox-68.0.tar.bz2    
  else
    wget https://ftp.mozilla.org/pub/firefox/releases/68.0/linux-i686/en-US/firefox-68.0.tar.bz2    
  fi
  
  tar -xjf firefox-68.0.tar.bz2
  sudo mv firefox /opt/firefox68
  sudo ln -s /opt/firefox68/firefox-bin /usr/bin/firefox
  rm firefox-68.0.tar.bz2
fi
echo
echo "Installing InstaPy..."
sudo pip install instapy --ignore-installed
pushd -0
echo "Setup is completed."
read -p "Press any key to continue..." key
