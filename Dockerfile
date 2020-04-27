FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    git \
    python3-pip \
  && rm -rf /var/lib/apt/lists/* \
  && pip3 install git+https://github.com/ansible/ansible.git@v2.9.7 \
  && pip3 install paramiko
