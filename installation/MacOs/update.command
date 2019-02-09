# Simple update script for MacOS

echo "Updating InstaPy..."
echo "===================="
pip install -U instapy
clear
pip show instapy
echo "This window will close in 30 seconds or you may choose to exit now once done viewing version info"
sleep 30
