@echo off

pip install -U instapy
if ERRORLEVEL 1 GOTO :failure
if not ERRORLEVEL 1 GOTO :success

REM[used when update failed]
:failure
cls
echo An error occured. please try again. If the error persists please contact a developer.
pause
GOTO :EOF

REM[used when update is successful. also displays instapy version]
:success
cls
pip show instapy
echo Update successful! The version of instapy is displayed above.
pause