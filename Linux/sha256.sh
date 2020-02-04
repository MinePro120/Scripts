#!/bin/bash

# Script that caclulates the sha256 checksums of all the
# files in its directory and outputs them to SHA256SUMS.txt
# in alphabetical order (based on the file's directory)

rm SHA256SUMS.txt > /dev/null 2>&1
find . -type f -exec sha256sum {} \; >> /tmp/SHA256SUMS.txt
sort -k2 /tmp/SHA256SUMS.txt > SHA256SUMS.txt
rm /tmp/SHA256SUMS.txt > /dev/null 2>&1
exit 0
