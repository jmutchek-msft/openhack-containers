RESOURCE_GROUP=teamResources
CLUSTER_NAME=aks-oh-team-4
HACKER1=hacker13h3@OTAPRD360ops.onmicrosoft.com
HACKER2=hacker22l7@OTAPRD360ops.onmicrosoft.com
HACKER3=hacker3p4l@OTAPRD360ops.onmicrosoft.com
HACKER4=hacker4ji7@OTAPRD360ops.onmicrosoft.com
HACKER5=hacker57tl@OTAPRD360ops.onmicrosoft.com
HACKER6=hacker6re8@OTAPRD360ops.onmicrosoft.com
# ACCOUNT_UPN=$(az account show --query user.name -o tsv)

# Get the resource ID of your AKS cluster
AKS_CLUSTER=$(az aks show --resource-group $RESOURCE_GROUP --name $CLUSTER_NAME --query id -o tsv)

## HACKER 1
# Get the account credentials for the logged in user
ACCOUNT_ID=$(az ad user show --id $HACKER1 --query objectId -o tsv)

# Assign the 'Cluster Admin' role to the user
az role assignment create \
    --assignee $ACCOUNT_ID \
    --scope $AKS_CLUSTER \
    --role "Azure Kubernetes Service Cluster Admin Role"

## HACKER 2
# Get the account credentials for the logged in user
ACCOUNT_ID=$(az ad user show --id $HACKER2 --query objectId -o tsv)

# Assign the 'Cluster Admin' role to the user
az role assignment create \
    --assignee $ACCOUNT_ID \
    --scope $AKS_CLUSTER \
    --role "Azure Kubernetes Service Cluster Admin Role"

## HACKER 3
# Get the account credentials for the logged in user
ACCOUNT_ID=$(az ad user show --id $HACKER3 --query objectId -o tsv)

# Assign the 'Cluster Admin' role to the user
az role assignment create \
    --assignee $ACCOUNT_ID \
    --scope $AKS_CLUSTER \
    --role "Azure Kubernetes Service Cluster Admin Role"

## HACKER 4
# Get the account credentials for the logged in user
ACCOUNT_ID=$(az ad user show --id $HACKER4 --query objectId -o tsv)

# Assign the 'Cluster Admin' role to the user
az role assignment create \
    --assignee $ACCOUNT_ID \
    --scope $AKS_CLUSTER \
    --role "Azure Kubernetes Service Cluster Admin Role"

## HACKER 5
# Get the account credentials for the logged in user
ACCOUNT_ID=$(az ad user show --id $HACKER5 --query objectId -o tsv)

# Assign the 'Cluster Admin' role to the user
az role assignment create \
    --assignee $ACCOUNT_ID \
    --scope $AKS_CLUSTER \
    --role "Azure Kubernetes Service Cluster Admin Role"



