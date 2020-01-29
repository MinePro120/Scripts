#!/bin/sh

# Script that caclulates the sha256 checksums of all the
# files in its directory and outputs them to SHA256SUMS.txt

rm SHA256SUMS.txt > /dev/null 2>&1
echo "SHA256 :                                                          File :" >> /tmp/SHA256SUMS.txt
echo >> /tmp/SHA256SUMS.txt
find . -type f -exec sha256sum {} \; >> /tmp/SHA256SUMS.txt
mv /tmp/SHA256SUMS.txt .
exit 0
