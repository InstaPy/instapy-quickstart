#!/bin/bash
# Simple installation script for Unix-Like

echo "Linux InstaPy Setup"
echo "================================"

kernel=$(uname)

echo "Installing depedencies..."
echo "================================"

if [ $kernel != "Linux" ]; then
  echo "Non Linux System detected, please use the right installtion file for your system"
else
  echo "Please insert your password in order to install the depedencies"
  sudo apt update && sudo apt -y install \
    unzip \
    python3-pip \
    python3-dev \
    python3-venv \
    build-essential \
    libssl-dev \
    libffi-dev \
    xvfb \
    firefox-geckodriver \
    firefox
fi

echo
echo "Create a virtual environment..."
echo "================================"

python3 -m venv $HOME/InstaPy/venv
. $HOME/InstaPy/venv/bin/activate

echo "Installing InstaPy..."
echo "================================"
pip install --upgrade pip wheel
pip install instapy

# Checking if it was installed
PIP_INSTALLS=$(pip list)
if [[ $PIP_INSTALLS == *"instapy"* ]]; then
    echo "Successfully installed InstaPy!"
    read -p "Press any key to continue..." key
else
    echo "There was a problem installing InstaPy, please copy the error message and create an issue here: https://github.com/InstaPy/instapy-quickstart/issues"
    echo
    echo "You can also manually install InstaPy with this guide: https://github.com/timgrossmann/InstaPy"
    echo
    echo "Sorry for the inconveniences"
fi
