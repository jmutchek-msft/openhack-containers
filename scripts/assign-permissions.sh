# based on https://docs.microsoft.com/en-us/azure/aks/managed-aad

RG=teamResources
AKS=team4-openhack
AKS_ADMIN_GROUP=myAKSAdminGroup
WEB_GROUP=webRoleGroup
API_GROUP=apiRoleGroup
WEBDEV=webdev@OTAPRD360ops.onmicrosoft.com
APIDEV=apidev@OTAPRD360ops.onmicrosoft.com

HACKER1=hacker13h3@OTAPRD360ops.onmicrosoft.com
HACKER2=hacker22l7@OTAPRD360ops.onmicrosoft.com
HACKER3=hacker3p4l@OTAPRD360ops.onmicrosoft.com
HACKER4=hacker4ji7@OTAPRD360ops.onmicrosoft.com
HACKER5=hacker57tl@OTAPRD360ops.onmicrosoft.com
HACKER6=hacker6re8@OTAPRD360ops.onmicrosoft.com

AKS_ID=$(az aks show --resource-group $RG --name $AKS --query id -o tsv)

# Create an Azure AD groups
# ADMIN_ID=$(az ad group create --display-name $AKS_ADMIN_GROUP --mail-nickname $AKS_ADMIN_GROUP)
WEB_ID=$(az ad group create --display-name $WEB_GROUP --mail-nickname $WEB_GROUP --query objectId -o tsv)
API_ID=$(az ad group create --display-name $API_GROUP --mail-nickname $API_GROUP --query objectId -o tsv)

# Role assignment
az role assignment create --assignee $WEB_ID --role 'Azure Kubernetes Service Cluster User Role' --scope $AKS_ID
az role assignment create --assignee $API_ID --role 'Azure Kubernetes Service Cluster User Role' --scope $AKS_ID

## API-DEV
ACCOUNT_ID=$(az ad user show --id $APIDEV --query objectId -o tsv)
az ad group member add --group $API_GROUP --member-id $ACCOUNT_ID

## WEB-DEV
ACCOUNT_ID=$(az ad user show --id $WEBDEV --query objectId -o tsv)
az ad group member add --group $WEB_GROUP --member-id $ACCOUNT_ID




## HACKER 1
# Get the account credentials for the logged in user
ACCOUNT_ID=$(az ad user show --id $HACKER1 --query objectId -o tsv)
az ad group member add --group $WEB_GROUP --member-id $ACCOUNT_ID
az ad group member add --group $API_GROUP --member-id $ACCOUNT_ID

## HACKER 2
# Get the account credentials for the logged in user
ACCOUNT_ID=$(az ad user show --id $HACKER2 --query objectId -o tsv)
az ad group member add --group $WEB_GROUP --member-id $ACCOUNT_ID
az ad group member add --group $API_GROUP --member-id $ACCOUNT_ID

## HACKER 3
# Get the account credentials for the logged in user
ACCOUNT_ID=$(az ad user show --id $HACKER3 --query objectId -o tsv)
az ad group member add --group $WEB_GROUP --member-id $ACCOUNT_ID
az ad group member add --group $API_GROUP --member-id $ACCOUNT_ID

## HACKER 4
# Get the account credentials for the logged in user
ACCOUNT_ID=$(az ad user show --id $HACKER4 --query objectId -o tsv)
az ad group member add --group $WEB_GROUP --member-id $ACCOUNT_ID
az ad group member add --group $API_GROUP --member-id $ACCOUNT_ID

## HACKER 5
# Get the account credentials for the logged in user
ACCOUNT_ID=$(az ad user show --id $HACKER5 --query objectId -o tsv)
az ad group member add --group $WEB_GROUP --member-id $ACCOUNT_ID
az ad group member add --group $API_GROUP --member-id $ACCOUNT_ID
