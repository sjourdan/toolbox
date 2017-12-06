# Toolbox Docker Container

[![Circle CI](https://circleci.com/gh/sjourdan/toolbox.svg?style=shield)](https://circleci.com/gh/sjourdan/toolbox)

Contains some utilities (`strace`, `dig`, `netcat`, `ifconfig`, `nmap`, `curl`, `traceroute`, `tcpdump`, `htop`, `iftop`, `iotop`, `mtr`, `ping`, `speedtest-cli`, `hdparm`, etc).

This is now using Alpine, image size around ~70MB.

    docker pull sjourdan/toolbox

Examples:

    docker run -it --rm sjourdan/toolbox dig +short github.com

    docker run -it --rm sjourdan/toolbox curl -IL https://google.com

    docker run -it --rm sjourdan/toolbox ifconfig eth0

    docker run -it --rm sjourdan/toolbox nc google.com 80

    docker run -it --rm sjourdan/toolbox speedtest-cli

    docker run -it --rm sjourdan/toolbox iostat 1 9999

    docker run -it --rm sjourdan/toolbox dstat

    docker run -t --pid=container:web --net=container:web --cap-add sys_admin --cap-add sys_ptrace sjourdan/toolbox strace -f -p 1

    docker run -it --rm --pid=host sjourdan/toolbox htop
    
    docker run -it --rm --privileged sjourdan/toolbox hdparm -tT /dev/xvda
    
    docker run -it --rm sjourdan/toolbox mtr 10.0.0.100

## Build

    make build

Find container's last updated date:

    docker inspect --format '{{json .Config.Labels}}' sjourdan/toolbox
    {"version":"20170228"}

## Test

    make tests
