# Mac script that simply executes the quickstart file in the root folder
# of this repository with python

echo "Starting InstaPy with quickstart"
echo "===================="
# get absolute path of the dir
BASEDIR=$(dirname "$BASH_SOURCE")
cd $BASEDIR
python ../quickstart.py

