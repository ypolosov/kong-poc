# Kubernetes Kind cluster

Create a Kubernetes cluster
`kind create cluster --config kind-ingress.config`

# Contour Project

`kubectl apply -f contour.yaml`

or

helm repo add bitnami https://charts.bitnami.com/bitnami

helm install my-release bitnami/contour --namespace projectcontour --create-namespace

## Exposing localhost as service in the Kind cluster
https://github.com/kubernetes-sigs/kind/issues/1200

kubectl -n projectcontour get po,svc


