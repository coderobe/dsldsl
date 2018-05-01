#!/usr/bin/env bash

# TODO: parse configs instead to also read offline machines

lxc-ls -f 2>/dev/null | tr ',' ' ,' | awk '{if($5!~/^\-/ && $5!~/^IPV4/){printf "#define TO_"; printf gensub("-", "_", "g", toupper($1)); printf " -j DNAT --to-destination "; print $5}}' | column -to' '
