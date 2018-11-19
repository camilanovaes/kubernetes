#!/bin/bash

echo "Deploying kubernetes with Calico..."

kubeadm init --pod-network-cidr=192.168.0.0/16 --apiserver-advertise-address="200.239.93.51" #if you want to use a different IP address than the main server IP
export KUBECONFIG=/etc/kubernetes/admin.conf

kubectl apply -f https://docs.projectcalico.org/v3.3/getting-started/kubernetes/installation/hosted/rbac-kdd.yaml
kubectl apply -f https://docs.projectcalico.org/v3.3/getting-started/kubernetes/installation/hosted/kubernetes-datastore/calico-networking/1.7/calico.yaml
