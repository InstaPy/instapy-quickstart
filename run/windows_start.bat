@echo off

echo starting instapy with quickstart
echo ================================

cd C:\Users\%USERNAME%\instapy-quickstart
if ERRORLEVEL 1 GOTO :fileNotFound
if not ERRORLEVEL 1 GOTO :run

:fileNotFound
echo the quickstart.py file is not installed in the correct directory. visit https://github.com/InstaPy/instapy-quickstart to find out how to install it correctly.
pause
GOTO :EOF

:run
echo quickstart.py found. starting now.
python quickstart.py
pause