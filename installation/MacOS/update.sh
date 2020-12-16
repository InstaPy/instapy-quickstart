#!/bin/bash
# Simple update script for macOS

echo "Updating InstaPy..."
echo "================================"
. $HOME/InstaPy/venv/bin/activate
pip install -U instapy
clear
pip show instapy
echo "This window will close in 30 seconds or you may choose to exit now once done viewing version info"
sleep 30
