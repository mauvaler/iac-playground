#!/bin/bash

echo "Criando imagens iniciais.............."
docker build -t mauvaler/backend-php:1.0 backend/.
docker build -t mauvaler/database-mysql:1.0 database/.

echo "Fazendo o envio das imagens..........."
docker push mauvaler/backend-php:1.0
docker push mauvaler/database-mysql:1.0

echo "Criando secrets do cluster..........."
kubectl apply -f ./secrets.yml

echo "Criando servicos no cluster..........."
kubectl apply -f ./services.yml

echo "Criando deployments..................."
kubectl apply -f ./deployment:1.0.yml --record
