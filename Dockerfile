FROM ubuntu:16.04
MAINTAINER Stephane Jourdan <sjourdan@greenalto.com>
LABEL version="20160614"
RUN apt-get update -y && apt-get install -y \
  dnsutils \
  netcat \
  net-tools \
  nmap \
  curl \
  traceroute \
  tcpdump \
  htop \
  iftop \
  iotop \
  mtr-tiny &&\
  rm -rf /var/lib/apt/lists/*
COPY tests.sh /tmp/
