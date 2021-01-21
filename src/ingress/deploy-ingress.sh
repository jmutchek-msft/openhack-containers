#see https://docs.microsoft.com/en-us/azure/aks/ingress-basic
#for instructions to install the ingress controller


# Create a namespace for your ingress resources
namespace=jungho-ingress

# Use Helm to deploy an NGINX ingress controller
helm install nginx-ingress ingress-nginx/ingress-nginx \
    --namespace $namespace \
    --set controller.replicaCount=2 \
    --set controller.nodeSelector."beta\.kubernetes\.io/os"=linux \
    --set defaultBackend.nodeSelector."beta\.kubernetes\.io/os"=linux \
    --set controller.admissionWebhooks.patch.nodeSelector."beta\.kubernetes\.io/os"=linux

kubectl apply -f ingress-apis.yaml -n jungho-apis
kubectl apply -f ingress-web.yaml -n jungho-web
