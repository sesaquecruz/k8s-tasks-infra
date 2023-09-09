# Tasks Infra

This repository contains the configuration files for set up a Kubernetes cluster and deploying the components of Tasks App. It utilizes an Nginx Ingress Controller as the single external entry point.

## Diagram

A simple infrastructure view, ignoring: config maps, secrets, volumes, issuers, etc.

![diagram](diagram.svg)

## Applications

Currently the applications are running in a Kubernetes cluster using GKE on GCP.

- [Tasks Api (swagger documentation)](https://git.tasks.Api.sesaque.com/Api/v1/swagger-ui/index.html)
- [Tasks App (web app)](https://git.tasks.sesaque.com/)

## Repositories

Instructions:

- [Argo CD](./argocd/README.md)

GitHub:

- [Tasks Api](https://github.com/sesaquecruz/java-tasks-Api)
- [Tasks App](https://github.com/sesaquecruz/react-tasks-app)

DockerHub:

- [Tasks Database](https://hub.docker.com/r/sesaquecruz/mysql-tasks-database/tags)
- [Tasks Api](https://hub.docker.com/r/sesaquecruz/java-tasks-Api/tags)
- [Tasks App](https://hub.docker.com/r/sesaquecruz/react-tasks-app/tags)

## Contributing

Contributions are welcome! If you find a bug or would like to suggest an enhancement, please make a fork, create a new branch with the bugfix or feature, and submit a pull request.

## License

This project is licensed under the MIT License. See [LICENSE](./LICENSE) file for more information.
