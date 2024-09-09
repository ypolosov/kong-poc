`kubectl create namespace clientcred-demo`

`kubectl apply -f oauth2clientcred.yaml -n clientcred-demo`
`kubectl apply -f pipeline.yaml -n clientcred-demo`
`kubectl apply -f deploy.yaml -n clientcred-demo`


http://clientcredecho-api.127.0.0.1.nip.io/v1.0/invoke/clientcredechoapp/method/echo?text=helloworld