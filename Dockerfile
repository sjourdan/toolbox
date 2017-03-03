FROM alpine:3.5
MAINTAINER Stephane Jourdan <fasten@fastmail.fm>
LABEL version="20170303"
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
  iputils
COPY tests-alpine.sh /tmp/
