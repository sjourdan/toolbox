FROM ubuntu:16.04
MAINTAINER Stephane Jourdan <sjourdan@greenalto.com>
LABEL version="20160604"
RUN apt-get update -y && apt-get install -y \
  dnsutils \
  netcat \
  net-tools \
  nmap \
  curl \
  traceroute \
  tcpdump && \
  rm -rf /var/lib/apt/lists/*
COPY tests.sh /tmp/
