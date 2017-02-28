FROM ubuntu:16.04
MAINTAINER Stephane Jourdan <fasten@fastmail.fm>
LABEL version="20170228"
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
  iputils-ping \
  mtr-tiny &&\
  rm -rf /var/lib/apt/lists/*
COPY tests.sh /tmp/
