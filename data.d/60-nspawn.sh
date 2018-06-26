#!/usr/bin/env bash

machinectl list | awk 'NR>1 {printf "#define TO_%s -j DNAT --to-destination %s\n", toupper($1), $6}' | head -n-2 | tr -s '.' | sed 's/.$//'
