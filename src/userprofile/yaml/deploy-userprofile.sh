#!/usr/bin/env bash
#create the namespace first
namespace=tripviewer


kubectl create --namespace="$namespace" -f configMap.yaml
kubectl create --namespace="$namespace" -f deployment.yaml
kubectl create --namespace="$namespace" -f service.yaml