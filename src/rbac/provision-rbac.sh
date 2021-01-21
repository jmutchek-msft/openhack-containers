#!/usr/bin/env bash
WEBDEV_USER_ID=b5ca8fd0-677d-4bc9-9d66-8beeed6d6c9e
APIDEV_USER_ID=b94b3ff0-6a1e-4cad-9c33-76a537b8c9f8

AKS_ID=$(az aks show --resource-group teamResources \
--name team4-openhack \
--query id -o tsv)

WEBDEV_GROUP_ID=$(az ad group create --display-name web-dev --mail-nickname web-dev --query objectId -o tsv)

az role assignment create \
  --assignee $WEBDEV_GROUP_ID \
  --role "Azure Kubernetes Service Cluster User Role" \
  --scope $AKS_ID

APIDEV_GROUP_ID=$(az ad group create --display-name api-dev --mail-nickname api-dev --query objectId -o tsv)

az role assignment create \
  --assignee $APIDEV_GROUP_ID \
  --role "Azure Kubernetes Service Cluster User Role" \
  --scope $AKS_ID

az ad group member add --group web-dev --member-id $WEBDEV_USER_ID
az ad group member add --group api-dev --member-id $APIDEV_USER_ID

