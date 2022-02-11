

curl -X GET "https://api.digitalocean.com/v2/account/keys" \
-H "Authorization: Bearer $DIGITAL_OCEAN_TOKEN" | jq '.ssh_keys | map(.id) | join(",")'
