# Kong POC


kubectl apply -k "github.com/kubernetes-sigs/gateway-api/config/crd?ref=v0.7.1"

kubectl get crds | grep gateway

helm repo add codecentric https://codecentric.github.io/helm-charts
helm repo update

helm install keycloak codecentric/keycloak --set keycloak.service.type=ClusterIP --set postgresql.enabled=false --set replicas=1

kubectl apply -f gateway/crds/standard-install.yaml

helm dependency build gateway
helm upgrade --install gateway-demo gateway

-----------------

dapr init --kubernetes

helm repo add dapr https://dapr.github.io/helm-charts/
helm repo update

-------------------

kubectl apply -f gateway
kubectl apply -f keycloak
kubectl apply -f dapr
kubectl apply -f test-app

kubectl delete -f gateway
kubectl delete -f keycloak
kubectl delete -f dapr
kubectl delete -f test-app