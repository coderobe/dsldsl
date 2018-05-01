#!/usr/bin/env bash

cat <<-EOF
#define ROUTE -A PREROUTING
#define ROUTE_TO -j DNAT --to-destination
#define EXT -i NETWORK_OUTSIDE_DEV
#define TCP -p tcp -m tcp
#define UDP -p udp -m udp
#define PORT --dport
EOF
