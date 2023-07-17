#!/bin/sh

kubectl apply -f mysql-config.yaml
kubectl apply -f mysql-secret.yaml
kubectl apply -f mysql.yaml


kubectl apply -f elastic-config.yml
kubectl apply -f elastic-secret.yml
kubectl apply -f elastic.yaml

kubectl apply -f rabbitmq-secret.yaml
kubectl apply -f rabbitmq.yaml

kubectl apply -f indexer-secret.yaml
kubectl apply -f indexer.yaml

kubectl apply -f backend.yaml

kubectl apply -f reporting-secret.yml
kubectl apply -f reporting.yaml

kubectl apply -f webapp.yaml

kubectl apply -f ingress.yaml