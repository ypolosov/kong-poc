
kubectl apply -f oauth2clientcred.yaml
kubectl apply -f pipeline.yaml
kubectl apply -f deploy.yaml


http://clientcredecho-api.127.0.0.1.nip.io/v1.0/invoke/clientcredechoapp/method/echo?text=helloworld