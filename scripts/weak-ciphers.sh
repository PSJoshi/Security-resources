#!/bin/bash

# OpenSSL requires the port number.
SERVER=test.com:443
DELAY=0.3
ciphers=`openssl ciphers 'ALL:eNULL' | sed -e 's/:/ /g'`

echo -n | openssl s_client -connect $SERVER

echo "Getting cipher list from existing openssl installation "`openssl version`

for cipher in ${ciphers[@]}
do
echo -n "Testing $cipher against the server..."
result=`echo -n ""| openssl s_client -cipher "$cipher" -connect $SERVER 2>&1`
if [[ "$result" =~ "Cipher is " ]] ; then
  echo "YES, weak cipher connection established!"
  grep $cipher weak_ciphers.txt
else
  if [[ "$result" =~ ":error:" ]] ; then
    error=`echo -n $result | cut -d':' -f6`
    echo NO \($error\)
  else
    echo UNKNOWN RESPONSE 
    echo $result
  fi
fi
sleep $DELAY
done
