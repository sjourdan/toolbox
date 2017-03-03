FROM alpine:3.5
MAINTAINER Stephane Jourdan <fasten@fastmail.fm>
LABEL version="20170303"
LABEL name="toolbox"
RUN apk --update --no-cache add \
  strace \
  bind-tools \
  netcat-openbsd \
  net-tools \
  nmap \
  curl \
  tcpdump \
  htop \
  mtr \
  iotop \
  iftop \
  iputils \
  speedtest-cli \
  hdparm
COPY tests.sh /tmp/
