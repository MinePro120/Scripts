#!/bin/bash

sender=<sender>@gmail.com    # Your gmail address
recipient=<recipient@domain.com>    # The recipient's email address
password=<password>    # Your gmail password

# Run once to send the email
# Beware! Your password is stored in plaintext (unsafe)
# Thus, be sure to take all the necessary security precautions
# (such as denying read permission to other users and/or not 
# leaving the password stored here after using the script)
# Google will send you a warning about "less secure apps", which
# option you should enable for this script to work
# Replace all the values included in "< >" (delete the "< >" symbols
# afterwards)

curl --url 'smtps://smtp.gmail.com:465' --ssl-reqd \
  --mail-from "$sender" \
  --mail-rcpt "$recipient" \
  --user "$sender:$password" \
  -T <(echo -e "From: "$sender"\nTo: "$recipient"\nSubject: <subject>\n\n<body>") 
# <subject> and <body> are, respectively, the subject and the body of the email
# \n denotes a new line
exit 0
