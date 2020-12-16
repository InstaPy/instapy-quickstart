#!/bin/sh
# This script that simply executes the quickstart file in the root folder
# of this repository with python

echo "Starting InstaPy with quickstart"
echo "================================"

CURRENT_DIR=$(dirname "$0")
ACTIVATE="$HOME/InstaPy/venv/bin/activate"

if [ -f ${ACTIVATE} ]; then
    . $HOME/InstaPy/venv/bin/activate
    python --version
    python $CURRENT_DIR/quickstart.py
else
    echo "Virtual environment was not found"
    echo "Execute install.sh under installation to configure the Virtual environment"
fi
