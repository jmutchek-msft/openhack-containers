kubectl get nodes
kubectl get namespaces
kubectl describe node aks-nodepool1-35270789-vmss000000
kubectl create namespace teamsviewer

# view the manifest for an existing deployment
kubectl get deployments/coredns -n kube-system -o yaml

