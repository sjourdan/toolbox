# Net Utils (Docker Container)

[![Circle CI](https://circleci.com/gh/sjourdan/netutils-docker.svg?style=shield)](https://circleci.com/gh/sjourdan/netutils-docker)

Contains some utilities (`dig`, `netcat`, `ifconfig`, `nmap`, `curl`, `traceroute`, `tcpdump` etc)

Examples:

    docker run -it --rm sjourdan/netutils dig +short github.com

    docker run -it --rm sjourdan/netutils curl -IL https://google.com

    docker run -it --rm sjourdan/netutils ifconfig eth0

    docker run -it --rm sjourdan/netutils nc google.com 80

## Build

    make build

Find container's last updated date:

    docker inspect --format '{{json .Config.Labels}}' sjourdan/netutils
    {"version":"20160603"}

## Test

    make tests
