# based on https://docs.microsoft.com/en-us/azure/aks/managed-aad

AKS_ADMIN_GROUP=myAKSAdminGroup
HACKER1=hacker13h3@OTAPRD360ops.onmicrosoft.com
HACKER2=hacker22l7@OTAPRD360ops.onmicrosoft.com
HACKER3=hacker3p4l@OTAPRD360ops.onmicrosoft.com
HACKER4=hacker4ji7@OTAPRD360ops.onmicrosoft.com
HACKER5=hacker57tl@OTAPRD360ops.onmicrosoft.com
HACKER6=hacker6re8@OTAPRD360ops.onmicrosoft.com

# Create an Azure AD group
az ad group create --display-name $AKS_ADMIN_GROUP --mail-nickname $AKS_ADMIN_GROUP

## HACKER 1
# Get the account credentials for the logged in user
ACCOUNT_ID=$(az ad user show --id $HACKER1 --query objectId -o tsv)
az ad group member add --group $AKS_ADMIN_GROUP --member-id $ACCOUNT_ID

## HACKER 2
# Get the account credentials for the logged in user
ACCOUNT_ID=$(az ad user show --id $HACKER2 --query objectId -o tsv)
az ad group member add --group $AKS_ADMIN_GROUP --member-id $ACCOUNT_ID

## HACKER 3
# Get the account credentials for the logged in user
ACCOUNT_ID=$(az ad user show --id $HACKER3 --query objectId -o tsv)
az ad group member add --group $AKS_ADMIN_GROUP --member-id $ACCOUNT_ID

## HACKER 4
# Get the account credentials for the logged in user
ACCOUNT_ID=$(az ad user show --id $HACKER4 --query objectId -o tsv)
az ad group member add --group $AKS_ADMIN_GROUP --member-id $ACCOUNT_ID

## HACKER 5
# Get the account credentials for the logged in user
ACCOUNT_ID=$(az ad user show --id $HACKER5 --query objectId -o tsv)
az ad group member add --group $AKS_ADMIN_GROUP --member-id $ACCOUNT_ID



