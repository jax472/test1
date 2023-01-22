FROM ubuntu:20.04

RUN apt-get install -y \
    sudo \
    git \
    vim nano \
    python3 \
    python3-pip \
    python-is-python3 \
    postgresql \
    mysql-server
