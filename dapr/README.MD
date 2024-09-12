dapr init -k


helm repo add dapr https://dapr.github.io/helm-charts/
helm repo update

helm upgrade --install dapr dapr/dapr \
--version=1.10.0 \
--namespace dapr-system \
--create-namespace \
--wait


helm install dapr-dashboard dapr/dapr-dashboard --namespace dapr-system


helm uninstall dapr --namespace dapr-system