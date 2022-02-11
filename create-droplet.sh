#!/bin/bash

KEYS=$(curl -X GET "https://api.digitalocean.com/v2/account/keys" \
-H "Authorization: Bearer $DIGITAL_OCEAN_TOKEN" | jq '.ssh_keys | .[].id|tostring' | awk 'NR > 1 { printf(",") } {printf "%s",$0}')
echo "ssh_keys:[$KEYS]"
USER_DATA="#!/bin/bash

echo saraza > ~/file.txt"
  -H "Content-Type: application/json"
DATA="{\"name\":\"example.com\",\"region\":\"sfo3\",\"size\":\"s-1vcpu-1gb\",\"image\":\"ubuntu-20-04-x64\",\"ssh_keys\":[$KEYS],\"backups\":false,\"ipv6\":false,\"user-data\":\"$USER_DATA\"}"
echo $DATA
curl -X POST "https://api.digitalocean.com/v2/droplets" \
  -H "Authorization: Bearer $DIGITAL_OCEAN_TOKEN" \
  -d "$DATA"
