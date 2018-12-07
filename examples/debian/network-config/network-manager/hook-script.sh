#!/bin/bash
# /etc/NetworkManager/dispatcher.d/hook

INTERFACE=$1
ACTION=$2

case "$2" in
  up)
	  echo "$INTERFACE is $ACTION"
  ;;
  down)
	  echo "$INTERFACE is $ACTION"
  ;;
  pre-up)
	  echo "$INTERFACE is $ACTION"
  ;;
  post-down)
	  echo "$INTERFACE is $ACTION"
  ;;
  *)
    echo "Usage: $0 {up|down|pre-up|post-down}"
    exit 1
  ;;
esac
