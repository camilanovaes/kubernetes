#!/bin/bash

# Enable schedule pods on master
kubectl taint nodes --all node-role.kubernetes.io/master-

