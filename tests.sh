#!/bin/sh

# Tests for the sjourdan/netutils container

# test for dig
`which dig` -v
# test for netcat
`which nc` -h
# test for net-tools
`which ifconfig` --version
# test for nmap
`which nmap` --version
# test for curl
`which curl` --version
# test for tcpdump
`which tcpdump` --version
# test for traceroute
`which traceroute` --version
# test for mtr
`which mtr` --version
# test for htop
`which htop` --version
# test for iftop
`which iftop` -h
# test for ping
`which ping` --help
