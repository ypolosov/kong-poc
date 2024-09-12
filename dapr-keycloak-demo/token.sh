KEYCLOAK_URL=https://dashboard.keycloak.127.0.0.1.nip.io
#client_id=dapr-openid-demo
client_id=myclient
#client_secret=faT912DGDQdvCg6Z00FV1NWjkYrrqwPj
client_secret=9F6MDmSkYWqPM66lWRmk9QqwNAmyQHIB
RESULT=`curl -k --data "grant_type=client_credentials&client_id=$client_id&client_secret=$client_secret" $KEYCLOAK_URL/realms/myrealm/protocol/openid-connect/token`

if ! [ -x "$(command -v jq)" ]; then
  echo 'Error: jq is not installed, copy the token from json output.' >&2
  echo $RESULT 
  exit 1
fi

echo $RESULT
ACCESS_TOKEN=$(echo "${RESULT}" | jq -r .access_token)
echo $ACCESS_TOKEN
