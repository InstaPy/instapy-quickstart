> **Please Note**: The scripts for Linux and RaspberryPi still have to be added!

### Installation

Installing InstaPy is really simple. Just choose the folder of the system you are using and double click the installation file. A small Terminal will open up and check if everything necessary is installed. Once that is done you will see it downloading and installing InstaPy.

Alternatively, on Linux or macOS, the installer can be run from a terminal like any other shell script.

```bash
macos@macos:/media/instapy-quickstart/installation/MacOS$ chmod +x install.sh

macos@macos:/media/instapy-quickstart/installation/MacOS$ ./install.sh
macOS InstaPy Setup
================================
Python is installed
================================
Pip is installed
================================
Firefox is installed
================================
```

```bash
ubuntu@ubuntu-18:/media/instapy-quickstart/installation/Linux$ chmod +x install.sh

ubuntu@ubuntu-18:/media/instapy-quickstart/installation/Linux$ ./install.sh
Linux InstaPy Setup
================================
Installing depedencies...
================================
Please insert your password in order to install the depedencies
[sudo] password for ubuntu:
```

> If you don't see any error messages, InstaPy is successfully installed. Otherwise, please search the [issues](https://github.com/timgrossmann/InstaPy/issues) for your error, there most likely already will be a solution to that.

---

### Updating InstaPy

In order to update InstaPy you simply choose the folder of the system you are using and then double click the update file.

```bash
macos@macos:/media/instapy-quickstart/installation/MacOS$ chmod +x update.sh

macos@macos:/media/instapy-quickstart/installation/MacOS$ ./update.sh
Updating InstaPy...
================================
Requirement already satisfied: instapy in /Users/macos/InstaPy/venv/lib/python3.8/site-packages (0.6.12)
```

```bash
ubuntu@ubuntu-18:/media/instapy-quickstart/installation/Linux$ chmod +x update.sh

ubuntu@ubuntu-18:/media/sf_instapy-quickstart/installation/Linux$ ./update.sh
Updating InstaPy...
================================
Requirement already satisfied: instapy in /home/ubuntu/InstaPy/venv/lib/python3.6/site-packages (0.6.12)
```
