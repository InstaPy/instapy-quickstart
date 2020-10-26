 
FROM vcatechnology/linux-mint



RUN apt-get update && \
    apt-get -y install unzip python3-pip python3-dev build-essential libssl-dev libffi-dev xvfb wget fonts-liberation libasound2  libnspr4 libnss3 && \ 
    pip3 install --upgrade pip && \
    export LANGUAGE=en_US.UTF-8 && \
    export LANG=en_US.UTF-8 && \
    export LC_ALL=en_US.UTF-8 && \
    locale-gen en_US.UTF-8 && \
    dpkg-reconfigure locales && \
    cd ~ && \
    wget "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" && \
    dpkg -i google-chrome-stable_current_amd64.deb && \
    apt-get install -y -f && \
    rm google-chrome-stable_current_amd64.deb && \
    apt-get -y install firefox && \
    pip3 install instapy 

COPY instapy-quickstart/ instapy-quickstart

WORKDIR instapy-quickstart    
    
COPY webdriverdownloader.py /usr/local/lib/python3.5/dist-packages/webdriverdownloader/webdriverdownloader.py

# command to run on container start
ENTRYPOINT [ "python3", "quickstart.py" ]


