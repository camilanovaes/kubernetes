#!/bin/bash

echo "Deploying kubernetes with Flannel ..."

kubeadm init --pod-network-cidr=10.244.0.0/16 # add --apiserver-advertise-address="ip" if you want to use a different IP address than the main server IP
sysctl net.bridge.bridge-nf-call-iptables=1 # Pass bridged IPV4 traffic to iptables's chains
export KUBECONFIG=/etc/kubernetes/admin.conf

# Use Flannel:
#kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/bc79dd1505b0c8681ece4de4c0d86c5cd2643275/Documentation/kube-flannel.yml

# OR

# Use Weave:
kubectl apply -f "https://cloud.weave.works/k8s/net?k8s-version=$(kubectl version | base64 | tr -d '\n')"
