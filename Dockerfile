FROM ubuntu:jammy

ARG DEBIAN_FRONTEND=noninteractive

RUN apt update && \
    apt install sudo && \
    apt install -y software-properties-common && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt update && \
    apt install -y curl git ansible build-essential && \
    apt update

RUN useradd -m lorenzo && usermod -aG sudo lorenzo
RUN echo "lorenzo:password" | chpasswd
RUN chsh -s /bin/bash lorenzo

COPY . /home/lorenzo/ansible

RUN chown -R lorenzo:lorenzo /home/lorenzo/ansible/.ssh

USER lorenzo

WORKDIR /home/lorenzo/ansible
