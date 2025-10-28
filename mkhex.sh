#!/bin/bash

let p=0
let k=0

# Usage: $0 <count>
N=$1
while (( N-- > 0 )); do
  # use bc to convert hex to decimal
  result=$(openssl rand -hex 16 | xargs openssl prime -hex | awk '/is prime/ {print "ibase=16;"$1}' | bc)

[ -z "$result" ] && ((k=k+1)) ||  { ((p=p+1)); echo "$result" >> primes.log ; }

done

echo
echo primes $p
echo k $k
echo

if [ $p -gt 0 ]; then
  echo "Found primes:"
  cat primes.log
fi

# source - http://stackoverflow.com/questions/19732162/openssl-generate-prime-number
