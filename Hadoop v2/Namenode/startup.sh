#!/bin/bash

if [ "$DAEMON" = "namenode" ]; then
  chmod +x namenode.sh
  ./namenode.sh
elif [ "$DAEMON" = "yarn" ]; then
  chmod +x yarn.sh
  ./yarn.sh
else
  echo "Unknown daemon type: $DAEMON"
  exit 1
fi