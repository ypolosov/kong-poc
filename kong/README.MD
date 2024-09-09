kubectl apply -f https://github.com/kubernetes-sigs/gateway-api/releases/download/v1.0.0/standard-install.yaml

kubectl create namespace kong

kubectl apply -k https://github.com/Kong/kubernetes-ingress-controller/config/crd

helm repo add kong https://charts.konghq.com
helm repo update

helm install kong kong/ingress -f kong/values.yaml -n kong