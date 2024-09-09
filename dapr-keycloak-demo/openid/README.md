`kubectl create namespace openid-demo`

`kubectl apply -f openid.yaml -n openid-demo`
`kubectl apply -f pipeline.yaml -n openid-demo`
`kubectl apply -f deploy.yaml -n openid-demo`

Set the keycloak url, clientid and client secret in token.sh

`./token.sh`

curl --location 'http://echo-api.127.0.0.1.nip.io/v1.0/invoke/goechoapp/method/echo?text=hello' \
--header 'Content-Type: application/json' \
--header "Authorization: Bearer ${5}" \
--data '{
    "test":"tee"
}'