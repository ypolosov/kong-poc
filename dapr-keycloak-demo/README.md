# Dapr Integration with Keycloak demo

# Dapr installation on the Kind cluster
`dapr init --kubernetes`

# Install Dapr Dashboard
 `helm repo add dapr https://dapr.github.io/helm-charts/```
`helm repo update`
`helm install dapr-dashboard dapr/dapr-dashboard `

`dapr dashboard -k -p 9999`


Demo 

* [oauth2 middleware](/oauth2/README.md)
* [oauth2 client credentials middleware](/oauth2/README.md)
* [oauth2 openid middleware](/openid/README.md)
