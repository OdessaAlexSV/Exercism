#!/usr/bin/env bash

copy=$1
len=${#copy}
for((i=$len-1;i>=0;i--)); do rev="$rev${copy:$i:1}"; done
echo "$rev"

#echo $1 | rev