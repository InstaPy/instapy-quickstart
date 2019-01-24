@echo off

echo starting instapy with quickstart
echo ================================

REM[find the current directory and removes "/run" from the end to get the instapy-quickstart directory"]
set CD=%CD:~0,-4%

cd %CD%
python quickstart.py

pause