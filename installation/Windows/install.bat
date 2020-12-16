@ECHO OFF

REM[Check for administrator privileges]
net session >nul 2>&1
IF %errorLevel% == 0 (
    ECHO Administrative permissions confirmed
    ECHO.
) else (
    ECHO.
    ECHO      Administrator privileges not found
    ECHO Rerun this file with Administrative privileges
    ECHO.
    PAUSE
    GOTO :EOF
)

REM[Checking if python is installed. If not, let the user know and quit.]
python --version
IF ERRORLEVEL 1 GOTO :pythonNotInstalledExit
IF NOT ERRORLEVEL 1 GOTO :pythonInstalled

:pythonInstalled
ECHO python installed

REM[Checking if pip is installed, If not, install it.]
pip --version
IF ERRORLEVEL 1 GOTO :errorNoPip
IF NOT ERRORLEVEL 1 GOTO :pipInstalled

:errorNoPip
ECHO Error: Pip not installed, installing now
REM[The following two lines download and install pip.]
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py

:pipInstalled
ECHO pip installed

REM[Checking for Firefox in the program file x86 version of the Firefox standard directory]
CD "C:\Program Files (x86)\Mozilla Firefox"
IF ERRORLEVEL 1 GOTO :checkFirefoxV2
IF NOT ERRORLEVEL 1 ECHO Directory found... checking for Firefox x86
IF EXIST "firefox.exe" GOTO :firefoxInstalled
IF NOT EXIST "firefox.exe" GOTO :firefoxNotInstalledExit

REM[Checking for Firefox in the program files version of the Firefox standard Directory]
:checkFirefoxV2
CD "C:\Program Files\Mozilla Firefox"
IF ERRORLEVEL 1 GOTO :firefoxNotInstalledExit
IF NOT ERRORLEVEL 1 ECHO Directory found... checking for Firefox x64
IF EXIST "firefox.exe" GOTO :firefoxInstalled
IF NOT EXIST "firefox.exe" GOTO :firefoxNotInstalledExit

:firefoxInstalled
ECHO Firefox installed

REM[Loading Virtual environment]
python -m venv %HOMEDRIVE%%HOMEPATH%\InstaPy\venv

CALL %HOMEDRIVE%%HOMEPATH%\InstaPy\venv\Scripts\activate.bat
python --version
pip install --upgrade pip wheel
pip install instapy

ECHO.
ECHO BATCH SESSION SUCCESSFUL(PYTHON, PIP, FIREFOX, AND INSTAPY ALL VERIFIED AND INSTALLED) YOU MAY EXIT NOW
ECHO.
PAUSE
GOTO :EOF

REM[This goto is used when python is not installed on the users machine.]
REM[Since it is a vital asset to InstaPy, the script is not allowed to continue until python is verified and installed on the machine]
:pythonNotInstalledExit
ECHO python not installed
ECHO you must install python before using InstaPy. please visit https://www.python.org/downloads/ and download the latest version of python 3 for your Operating System.
ECHO python installed: no
ECHO pip installed: unchecked
ECHO Firefox installed: unchecked
ECHO InstaPy installation: incompleted
PAUSE
GOTO :EOF

REM[this is used when Firefox is not installed on the users machine.]
REM[Since it is a vital asset to InstaPy, the script is not allowed to continue until Firefox is verified and installed on the machine]
:firefoxNotInstalledExit
ECHO Firefox not installed
ECHO you must install Firefox before using InstaPy. please visit https://www.mozilla.org/en-EN/firefox/new/ and download the correct version for your Operating System.
ECHO python installed: yes
ECHO pip installed: yes
ECHO Firefox installed: no
ECHO InstaPy installation: incompleted
PAUSE
GOTO :EOF
