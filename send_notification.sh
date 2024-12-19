#!/usr/bin/env bash

# Read input variables
COMPONENT=$1
STATUS=$2

echo $STATUS

# Default message
MESSAGE=""$COMPONENT" failed :no_entry:"
if [ $STATUS = 0 ]; then
    MESSAGE=""$COMPONENT" passed :white_check_mark:"
fi

# Send notification
curl -X POST \
  https://discord.com/api/webhooks/1319278801078849620/K3OIp6S2rJUEJhw2md2k1EOkqPGn1Q3RfQ0Ih73GlP6_v4Y-fL576DLGSg3RIEAIJLUR \
  -H 'Cache-Control: no-cache' \
  -H 'Content-Type: application/json' \
  -d '{
	"content":"'"$MESSAGE"'"
}'