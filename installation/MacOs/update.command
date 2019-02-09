# Simple update script for MacOS

echo "Updating InstaPy..."
echo "===================="
pip install -U instapy
clear
pip show instapy
echo "This window will automatically close in 1 minute or you may choose to close it yourself."
sleep 60
