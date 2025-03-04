#!/bin/bash

### Decodes a JWT from echo pipe buffer using jq 
### usage: pbpaste | jwtd 
### > { "id": ABC, "iat": 17415000, "exp": 17436942314}
### https://gist.github.com/angelo-v/e0208a18d455e2e6ea3c40ad637aac53?permalink_comment_id=5119116#gistcomment-5119116

jwtd () {
  local input="${1:-}"
  if [ -z "$input" ]; then
    if [ ! -t 0 ]; then
      input=$(cat /dev/stdin)
    else
      echo >&2 '✗ Need an argument or have a piped input!'
      return 1
    fi
  fi
  echo "$input" \
    | jq -Rrce 'split(".")[1] | . + "=" * (. | 4 - length % 4)' \
    | openssl base64 -d -A \
    | jq .
}
