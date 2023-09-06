#!/bin/bash

create_ingress_nginx_controller:
	helm upgrade --install ingress-nginx ingress-nginx \
		--repo https://kubernetes.github.io/ingress-nginx \
		--namespace ingress-nginx --create-namespace

create_letsencrypt_issuer:
	kubectl create namespace cert-manager
	kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.12.4/cert-manager.yaml
	kubectl apply -f issuer.yml