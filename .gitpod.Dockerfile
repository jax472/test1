FROM ubuntu:22.04

# Install custom tools, runtime, etc.
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt-get install -y \
    sudo \
    git \
    vim nano \
    docker.io \
    python3 \
    python3-pip \
    python-is-python3
