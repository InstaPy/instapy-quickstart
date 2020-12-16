@ECHO off

CALL %HOMEDRIVE%%HOMEPATH%\InstaPy\venv\Scripts\activate.bat
python --version
pip install -U instapy

IF ERRORLEVEL 1 GOTO :failure
IF NOT ERRORLEVEL 1 GOTO :success

REM[used when update failed]
:failure

ECHO.
ECHO An error occured. please try again. If the error persists please contact a developer.
ECHO.
PAUSE
GOTO :EOF

REM[used when update is successful. also displays instapy version]
:success

pip show instapy
ECHO.
ECHO Update successful! The version of instapy is displayed above.
ECHO.
PAUSE
GOTO :EOF
