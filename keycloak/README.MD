helm repo add codecentric https://codecentric.github.io/helm-charts
helm repo update

helm install keycloak codecentric/keycloak --set keycloak.service.type=ClusterIP --set postgresql.enabled=false --set replicas=1 -n keycloak --create-namespace --values keycloak/values.yaml



------------
https://www.keycloak.org/getting-started/getting-started-kube

kubectl create namespace keycloak

kubectl create -f https://raw.githubusercontent.com/keycloak/keycloak-quickstarts/latest/kubernetes/keycloak.yaml

wget -q -O - https://raw.githubusercontent.com/keycloak/keycloak-quickstarts/latest/kubernetes/keycloak-ingress.yaml | \
sed "s/KEYCLOAK_HOST/keycloak.127.0.0.1.nip.io/" | \
kubectl create -f -


KEYCLOAK_URL=https://keycloak.127.0.0.1.nip.io &&
echo "" &&
echo "Keycloak:                 $KEYCLOAK_URL" &&
echo "Keycloak Admin Console:   $KEYCLOAK_URL/admin" &&
echo "Keycloak Account Console: $KEYCLOAK_URL/realms/myrealm/account" &&
echo ""


https://dashboard.keycloak.127.0.0.1.nip.io/realms/myrealm/account