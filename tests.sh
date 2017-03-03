#!/bin/sh

# Tests for the sjourdan/netutils container

# test for dig
`which dig` -v
# test for netcat
`which nc` -h
# test for net-tools
`which ifconfig` --help
# test for nmap
`which nmap` --version
# test for curl
`which curl` --version
# test for tcpdump
`which tcpdump` --version
# test for traceroute
`which traceroute` --help
# test for mtr
`which mtr` --version
# test for htop
`which htop` --version
# test for iftop
`which iftop` -h
# test for ping
`which ping` -c1 127.0.0.1
# test for strace
`which strace` -h
# test for speedtest
`which speedtest-cli` -h
# test for hdparm
`which hdparm` -h
