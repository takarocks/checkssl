#!/bin/zsh

if [ -z "$1" ];then
  printf "Specify the target domain to check SSL\n"
else
  # Uncomment if you want to show actual command
  # printf "echo | openssl s_client -showcerts -servername $1 -connect $1:443 2>/dev/null | openssl x509 -inform pem -noout -text | head\n"
  echo | openssl s_client -showcerts -servername $1 -connect $1:443 2>/dev/null | openssl x509 -inform pem -noout -text | head
fi
