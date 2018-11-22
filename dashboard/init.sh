#!/bin/bash

# Apply Dashboard 
kubectl create -f https://raw.githubusercontent.com/kubernetes/dashboard/master/src/deploy/recommended/kubernetes-dashboard.yaml

# Create a user
kubectl create -f admin-user.yaml

# Create a ClusterRoleBinding
kubectl create -f cluster-role-biding.yaml
