`kubectl create namespace oauth2-demo`

`kubectl apply -f oauth2.yaml -n oauth2-demo`
`kubectl apply -f pipeline.yaml -n oauth2-demo`
`kubectl apply -f deploy.yaml -n oauth2-demo`

Open browser and copy paste

http://oauthecho-api.127.0.0.1.nip.io/v1.0/invoke/oauthechoapp/method/echo?text=hello