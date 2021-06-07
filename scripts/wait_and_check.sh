#!/usr/bin/bash

# do you work in daemon mode, nohup or `&` 

#...
# check it
for pid in $(jobs -p)
do
wait $pid
if [[ $? -ne 0 ]]; then
  echo "$pid work error"
  exit 1
fi
