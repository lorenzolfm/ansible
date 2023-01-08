FROM ubuntu:focal

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install sudo && \
    apt-get install -y software-properties-common && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y curl git ansible build-essential
RUN useradd -m lorenzo && usermod -aG sudo lorenzo
RUN echo "lorenzo:password" | chpasswd
RUN chsh -s /bin/bash lorenzo

USER lorenzo

WORKDIR /home/lorenzo

COPY . .
