#!/bin/bash

# Usage: $0 <starting_number> <final_number>
N=$1
while (( N <= $2 )); do
  # use bc to convert hex to decimal
  openssl prime $N | awk '/is prime/ {print "ibase=16;"$1}' | bc
  let N++
done

srouce - http://stackoverflow.com/questions/19732162/openssl-generate-prime-number
