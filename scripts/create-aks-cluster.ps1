az akx get-versions --location northeurope
az aks create -resource-group teamResources --name aks-oh-team-4 --node-count 2 --kubernetes-version 1.19.6 --location northeurope --generate-ssh-keys
az aks get-credentials --resource-group teamResources --name aks-oh-team-4

# connect AKS to ACR (so it can pull images)
az aks update --resource-group teamResource --name aks-oh-team-4 --attach-acr registrykna5332