# Simple installation script for MacOS

if [ $kernel != "Darwin" ]; then
  echo "Non MacOS System detected, please use the right installtion file for your system"
else
    DONE_STEPS=0

    # Check if Python is installed
    if command -v python &>/dev/null; then
        echo "Python is installed"
        DONE_STEPS=`expr $DONE_STEPS + 1`
    else
        echo "Please install the latest version of Python from https://www.python.org/downloads/"
        echo 
        echo "Sorry for the inconveniences"
    fi

    echo "===================="

    # Check if pip is installed
    if command -v pip &>/dev/null; then
        echo Pip is installed
        DONE_STEPS=`expr $DONE_STEPS + 1`
    else
        echo "Installing pip..."
        curl https://bootstrap.pypa.io/get-pip.py > get-pip.py

        # Asking for PW for user installation
        echo "Please insert your password in order to install pip"
        sudo python get-pip.py
        rm get-pip.py

        # Check if it's installed now
        if command -v pip &>/dev/null; then
            echo "Pip has been successfilly installed"
            DONE_STEPS=`expr $DONE_STEPS + 1`
        else
            echo "Pip could not be installed, please manually install pip using this resource: https://stackoverflow.com/questions/17271319/how-do-i-install-pip-on-macos-or-os-x"
            echo 
            echo "Sorry for the inconveniences"
        fi
    fi

    echo "===================="

    # Check if Chrome is installed at default location
    CHROMEPATH="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
    if [ -x "$CHROMEPATH" ]; then
        echo "Chrome is installed"
        DONE_STEPS=`expr $DONE_STEPS + 1`
    else
        echo "Please make sure that Chrome is installed. If not, please install the latest version of Chrome from https://www.google.com/chrome/"
        echo 
        echo "Sorry for the inconveniences"
    fi

    echo "===================="

    # Checking if InstaPy can be installed and installing InstaPy
    if [ $DONE_STEPS = 3 ]; then
        echo "Installing InstaPy..."
        pip install instapy
        
        echo "===================="
        
        # Checking if it was installed
        PIP_INSTALLS="$(pip list)"
        if [[ $PIP_INSTALLS = *"instapy"* ]]; then
            echo "Successfully installed InstaPy!"
        else
            echo "There was a problem installing InstaPy, please copy the error message and create an issue here: https://github.com/InstaPy/instapy-quickstart/issues"
            echo
            echo "You can also manually install InstaPy with this guide: https://github.com/timgrossmann/InstaPy"
            echo 
            echo "Sorry for the inconveniences"
        fi
        
    else
        echo "Error! - Please double check the installation of Python, pip, and Chrome \nSorry for the inconveniences"
    fi
fi