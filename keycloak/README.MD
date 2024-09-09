helm repo add codecentric https://codecentric.github.io/helm-charts
helm repo update

helm install keycloak codecentric/keycloak --set keycloak.service.type=ClusterIP --set postgresql.enabled=false --set replicas=1 -n keycloak --create-namespace
