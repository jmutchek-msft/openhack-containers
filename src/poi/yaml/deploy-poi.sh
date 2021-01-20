#!/usr/bin/env bash

namespace=tripviewer
#create the namespace first
kubectl create --namespace="$namespace" -f configMap.yaml
kubectl create --namespace="$namespace" -f secrets.yaml
kubectl create --namespace="$namespace" -f deployment.yaml
kubectl create --namespace="$namespace" -f service.yaml