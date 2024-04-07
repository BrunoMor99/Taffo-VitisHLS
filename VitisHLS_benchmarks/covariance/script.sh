#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: remove_user_metadata.sh <filename>"
  exit 1
fi

filename=$1

sed -i \
    -e 's/"Debug Info Version", i32 3/"Debug Info Version", i32 0/g' \
    $filename

sed -i \
    -e 's/!"fpga.top", !"user", !\([0-9]*\)/!"user"/g' \
    $filename

sed -i \
    -e 's/"user", !\([0-9]*\)/"user"/g' \
    $filename
