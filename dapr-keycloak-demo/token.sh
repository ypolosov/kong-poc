KEYCLOAK_URL=https://40ed-49-36-24-37.ngrok-free.app
#client_id=dapr-openid-demo
client_id=dapr-openid-demo
#client_secret=faT912DGDQdvCg6Z00FV1NWjkYrrqwPj
client_secret=faT912DGDQdvCg6Z00FV1NWjkYrrqwPj
RESULT=`curl -k --data "grant_type=client_credentials&client_id=$client_id&client_secret=$client_secret" $KEYCLOAK_URL/realms/demo/protocol/openid-connect/token`

if ! [ -x "$(command -v jq)" ]; then
  echo 'Error: jq is not installed, copy the token from json output.' >&2
  echo $RESULT 
  exit 1
fi

ACCESS_TOKEN=$(echo "${RESULT}" | jq -r .access_token)
echo $ACCESS_TOKEN
