#!/usr/bin/env bash
#create the namespace first
namespace=tripviewer-apis

#create generic secret from file
#kubectl create secret generic sql-secrets --namespace="$namespace" \
#--from-file=SQL_PASSWORD=./secrets/password \
#--from-file=SQL_USER=./secrets/user

kubectl create --namespace="$namespace" -f configMap.yaml
kubectl create --namespace="$namespace" -f deployment.yaml
kubectl create --namespace="$namespace" -f service.yaml