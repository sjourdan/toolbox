# Net Utils (Docker Container)

[![Circle CI](https://circleci.com/gh/sjourdan/netutils-docker.svg?style=shield)](https://circleci.com/gh/sjourdan/netutils-docker)

Contains some utilities (`strace`, `dig`, `netcat`, `ifconfig`, `nmap`, `curl`, `traceroute`, `tcpdump`, `htop`, `iftop`, `iotop`, `mtr`, `ping`, `speedtest-cli`, `hdparm`, etc).

This is now using Alpine, image size around ~70MB.

Examples:

    docker run -it --rm sjourdan/netutils dig +short github.com

    docker run -it --rm sjourdan/netutils curl -IL https://google.com

    docker run -it --rm sjourdan/netutils ifconfig eth0

    docker run -it --rm sjourdan/netutils nc google.com 80

    docker run -it --rm sjourdan/netutils speedtest-cli

    docker run -t --pid=container:web --net=container:web --cap-add sys_admin --cap-add sys_ptrace sjourdan/netutils strace -f -p 1

## Build

    make build

Find container's last updated date:

    docker inspect --format '{{json .Config.Labels}}' sjourdan/netutils
    {"version":"20170228"}

## Test

    make tests
