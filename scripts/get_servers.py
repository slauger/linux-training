#!/usr/bin/env python

import sys
import requests

if len(sys.argv) <= 1:
  print("Error: missing API token")
  sys.exit(1)

response = requests.get(
  'https://api.hetzner.cloud/v1/servers',
  headers={'Authorization': 'Bearer ' + sys.argv[1]}
)

for item in response.json()['servers']:
  print(item['name'] + ': ' +  item['public_net']['ipv4']['ip'])
