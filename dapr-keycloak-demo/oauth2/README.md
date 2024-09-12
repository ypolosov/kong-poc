
kubectl apply -f oauth2.yaml
kubectl apply -f pipeline.yaml
kubectl apply -f deploy.yaml

Open browser and copy paste

http://oauthecho-api.127.0.0.1.nip.io/v1.0/invoke/oauthechoapp/method/echo?text=hello


kubectl rollout restart deployment/oauthechoapp
kubectl rollout restart deployment/dapr-operator -n dapr-system