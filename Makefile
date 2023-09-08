#!/bin/bash

create_ingress_controller_nginx:
	helm upgrade --install ingress-nginx ingress-nginx \
		--repo https://kubernetes.github.io/ingress-nginx \
		--namespace ingress-nginx --create-namespace

create_cert-manager:
	kubectl create namespace cert-manager
	kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.12.4/cert-manager.yaml

create_issuer:
	kubectl apply -f security/issuer.yml

create_account:
	kubectl create namespace tasks-app
	kubectl apply -f security/account.yml

create_project_context:
	kubectl config set-context tasks-app \
		--namespace=tasks-app \
		--cluster=gke_basic-decoder-394706_us-central1-c_cluster-portfolio \
		--user=gke_basic-decoder-394706_us-central1-c_cluster-portfolio