#!/usr/bin/env bash

if (( "$#" != 1 )); then
  echo "Usage: ./error_handling <greetee>"
  exit 1
elif [[ $1 == "Alice" ]] || [[ $1 == "Alice and Bob" ]]; then
  echo "Hello, $1" 
  exit 0
else 
  exit 1
fi
