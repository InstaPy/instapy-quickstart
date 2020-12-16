@ECHO off

ECHO Starting InstaPy with quickstart
ECHO ================================

CALL %HOMEDRIVE%%HOMEPATH%\InstaPy\venv\Scripts\activate.bat
python --version
python quickstart.py

PAUSE
