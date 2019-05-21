#!/bin/bash
kubectl create namespace tutorial
kubens tutorial

# kubectl label set istio-injection=enabled 

kubectl apply -f <(istioctl kube-inject -f ../istio-tutorial/customer/kubernetes/Deployment.remote.yml) -n tutorial
kubectl apply -f <(istioctl kube-inject -f ../istio-tutorial/preference/kubernetes/Deployment.remote.yml) -n tutorial
kubectl apply -f <(istioctl kube-inject -f ../istio-tutorial/recommendation/kubernetes/Deployment.remote.yml) -n tutorial

