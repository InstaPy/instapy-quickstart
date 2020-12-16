#!/bin/bash
# Simple update script for Linux

echo "Updating InstaPy..."
echo "================================"
. $HOME/InstaPy/venv/bin/activate
pip install -U instapy
clear
pip show instapy
