#!/bin/bash

su $USER
mkdir -p $HOME/.kube
cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
chown $USER:$USER $HOME/.kube/config
