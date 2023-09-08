#!/bin/bash

create_ingress_controller:
	helm upgrade --install ingress-nginx ingress-nginx \
		--repo https://kubernetes.github.io/ingress-nginx \
		--namespace ingress-nginx --create-namespace

create_cert-manager:
	kubectl create namespace cert-manager
	kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.12.4/cert-manager.yaml

create_issuer:
	kubectl apply -f security/issuer.yml

create_project_account:
	kubectl create namespace tasks-app
	kubectl apply -f security/account.yml

create_project_context:
	kubectl config set-context tasks-app \
		--namespace=tasks-app \
		--cluster=gke_basic-decoder-394706_us-east1-b_cluster-1 \
		--user=gke_basic-decoder-394706_us-east1-b_cluster-1

select_project_context:
	kubectl config use-context tasks-app

show_project_components:
	kubectl get all -n tasks-app
