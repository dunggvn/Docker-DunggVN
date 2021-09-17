FROM ubuntu:21.04
ENV DEBIAN_FRONTEND=noninteractive
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ hirsute universe" > /etc/apt/sources.list.d/docker.list && \
    apt-get update && \
    apt-get install -y apt-utils
RUN apt-get install -y --no-install-recommends \
    aria2 \
    chromium-browser \
    curl \
    git \
    g++ \
    build-essential \
    gnupg2 \
    ffmpeg \
    jq \
    libpq-dev \
    libevent-dev \
    neofetch \
    netbase \
    wget \
    unzip \
    xz-utils \
    python3-pip \
    python3-psycopg2
RUN pip3 install --upgrade pip
RUN wget -qP /tmp/ "https://chromedriver.storage.googleapis.com/2.41/chromedriver_linux64.zip" && \
    unzip -o /tmp/chromedriver_linux64.zip -d /usr/bin && \
    chmod 755 /usr/bin/chromedriver
