#!/bin/bash

# Script that calculates the sha256 checksums of all the
# files in its directory (excluding itself) and outputs
# them to SHA256SUMS.txt in alphabetical order 
# (based on the file's directory)

rm SHA256SUMS.txt > /dev/null 2>&1
find . \( ! -regex '.*/\..*' \) -type f -a ! -name 'sha256.sh' -exec sha256sum {} \; > /tmp/SHA256SUMS.txt
sort -k2 /tmp/SHA256SUMS.txt > SHA256SUMS.txt
exit 0
