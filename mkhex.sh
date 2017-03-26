#!/bin/bash

# Usage: $0 <count>
N=$1
while (( N-- > 0 )); do
  # use bc to convert hex to decimal
  openssl rand -hex 32 | xargs openssl prime -hex | awk '/is prime/ {print "ibase=16;"$1}' | bc
done

srouce - http://stackoverflow.com/questions/19732162/openssl-generate-prime-number
