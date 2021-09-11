FROM ubuntu:21.04
ENV DEBIAN_FRONTEND=noninteractive
RUN echo "deb http://us.archive.ubuntu.com/ubuntu/ hirsute universe" > /etc/apt/sources.list.d/docker.list && \
    apt-get update
RUN apt-get install -y --no-install-recommends \
    apt-utils \
    aria2 \
    chromium-browser \
    chromium-chromedriver \
    curl \
    git \
    g++ \
    build-essential \
    gnupg2 \
    figlet \
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
