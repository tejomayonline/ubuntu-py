FROM ubuntu:16.04
MAINTAINER Tejomay Saha "tejomay.saha@srijan.net"

# python and relevant tools
RUN apt-get update && apt-get install -y \
    build-essential \
    python \
    python-dev \
    libxml2-dev \
    libxslt-dev \
    libssl-dev \
    zlib1g-dev \
    libyaml-dev \
    libffi-dev \
    python3-pip

RUN apt-get install build-essential \
                    libssl-dev \
                     libffi-dev \
                      python-dev \
                      python3-venv

# General dev tools
RUN apt-get install -y git

# Latest versions of python tools via pip
RUN pip install --upgrade pip \
                          virtualenv \
                          requests
