<img src="https://i.imgur.com/sJzfZsL.jpg" width="150" align="right">

# Instapy Quickstart

## Installation
Using this repository, you will be able to install and use InstaPy with only very few steps.

1. Download the zip of this repository by clicking on the green button in the upper right corner `Clone or download`.
1. Unzip the folder and open the _installation_ folder
1. Double click the _install_ file for your Operating System
1. If you missed any installation it will tell you what you have to install
1. Once successfully installed you can edit the quickstart file or use any of the template files from the _quickstart_templates_ folder
1. Insert your username and password and modify anything you want. Make use of the **[comprehensive documentation](https://github.com/timgrossmann/InstaPy)**.
1. The last step is to double click the file that suits your platform under `instapy_quickstart`, e.g. _start.sh_ for macOS or Linux, and _windows_start.bat_ for Windows.

> By default, every Python project on your Operating System will use the same directories to store and retrieve site package. Since Python projects are stored according to just their name, there is no differentiation between package versions. Let's say, ProjectA and InstaPy, would be required to use the same version, which could not be acceptable. InstaPy will be installed in a virtual environment, so your native Python installation will not be affected.

> If you're using one of the template files, make sure to copy and paste them into the same folder as the _quickstart.py_ file is and then rename it to _quickstart.py_ because that is the name of the file that will be chosen once you double click the run script.

> If you want to update InstaPy, navigate to the _installation_ folder and double clik the _update_ file for your Operating System.


### Basic quickstart file
To get started quickly we've prepared a basic quickstart file in which you only have to edit the username and password, inside the single quotes, to make sure you're all set up.
After testing your installation by starting InstaPy once, you can go in and use the [documentation](https://github.com/timgrossmann/InstaPy) to configure your personal bot.

The basic quickstart file looks like this:

```python
""" Quickstart script for InstaPy usage """
# imports
from instapy import InstaPy
from instapy import smart_run

# login credentials
insta_username = ''  # <- enter username here
insta_password = ''  # <- enter password here

# get an InstaPy session!
# set headless_browser=True to run InstaPy in the background
session = InstaPy(username=insta_username,
                  password=insta_password,
                  headless_browser=False)

with smart_run(session):
    """ Activity flow """
    # general settings
    session.set_relationship_bounds(enabled=True,
                                    delimit_by_numbers=True,
                                    max_followers=4590,
                                    min_followers=45,
                                    min_following=77)

    session.set_dont_include(["friend1", "friend2", "friend3"])
    session.set_dont_like(["pizza", "#store"])

    # activity
    session.like_by_tags(["natgeo"], amount=10)
```

> When adding lines to the script, make sure to use a code editor which takes care of the indentation. Otherwise you will get an error upon execution.

---

> **Please Note**: The scripts for RaspberryPi still have to be added!

### Starting InstaPy

Starting InstaPy with the start scripts is as easy as double clicking the file for your Operating System.
A command line will open and start to run InstaPy for you.
The actions taken by InstaPy will be logged there.

> If you see any error messages, please search the [issues](https://github.com/timgrossmann/InstaPy/issues) for your error, there most likely already will be a solution to that.

```bash
macos@macos:/media/instapy-quickstart$ ./start.sh
Starting InstaPy with quickstart
================================
Python 3.8.6
InstaPy Version: 0.6.12
 ._.  ._.  ._.  ._.  ._.  ._.  ._.  ._.  ._.
Workspace in use: "/Users/macos/InstaPy"
1858kb [00:00, 4017.60kb/s]
```

```bash
ubuntu@ubuntu-18:/media/instapy-quickstart$ ./start.sh
Starting InstaPy with quickstart
================================
Python 3.6.9
InstaPy Version: 0.6.12
 ._.  ._.  ._.  ._.  ._.  ._.  ._.  ._.
Workspace in use: "/home/ubuntu/InstaPy"
```

```bash
PS Z:\> .\windows_start.bat
Starting InstaPy with quickstart
================================
Python 3.7.9
InstaPy Version: 0.6.12
 ._.  ._.  ._.  ._.  ._.  ._.  ._.  ._.  ._.
Workspace in use: "C:/Users/windows/InstaPy"
```

### Already used InstaPy before `pip install instapy`?
If you've used InstaPy before the update to PyPi that allows installing with `pip install instapy`, you have to move your database and log files into the new workspace directory.
[**Check out this very short guide on what to do!**](https://github.com/timgrossmann/InstaPy#migrating-your-data-to-the-workspace-folder)

---

### Encountering an issue while installing?
If you should encounter any problem with the installation, please use the main repository [InstaPy](https://github.com/timgrossmann/InstaPy) to report the issue instead of this repository.


##### Have fun & stay responsible!
[![Run on Repl.it](https://repl.it/badge/github/InstaPy/instapy-quickstart)](https://repl.it/github/InstaPy/instapy-quickstart)
