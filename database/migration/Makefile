#!/bin/bash

get_pod:
	kubectl get pod mysql-flyway -n tasks-app

delete_pod:
	kubectl delete pod mysql-flyway -n tasks-app

run_migrations:
	kubectl apply -f pod.yml

view_logs:
	kubectl logs mysql-flyway -n tasks-app
