#!/usr/bin/env bash

tail -n+2 /etc/services | tr '/' ' ' | awk '{printf "#undef S_"; printf gensub("-", "_", "g", toupper($1)); printf "_"; printf toupper($3); printf "\n"; printf "#define S_"; printf gensub("-", "_", "g", toupper($1)); printf "_"; printf toupper($3); printf " "; print $2}' | uniq
