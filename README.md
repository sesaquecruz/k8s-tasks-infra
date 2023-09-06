# Tasks App Kubernetes Infrastructure

This repository contains configuration files for setting up a Kubernetes cluster and deploying the components of the Tasks App. It utilizes an Nginx Ingress Controller as the single external entry point.

## Diagram

A simple infrastructure view, ignoring: config maps, secrets, volumes, issuers, etc.

![diagram](diagram.svg)

## Applications

- [Tasks API (swagger documentation)](https://git.tasks.api.sesaque.com/api/v1/swagger-ui/index.html)
- [Tasks App (web app)](https://git.tasks.sesaque.com/)

## Repositories

GitHub:

- [Tasks API (backend)](https://github.com/sesaquecruz/java-tasks-api)
- [Tasks App (frontend)](https://github.com/sesaquecruz/react-tasks-app)

DockerHub:

- [Tasks API (database)](https://hub.docker.com/r/sesaquecruz/mysql-tasks-database/tags)
- [Tasks API (backend)](https://hub.docker.com/r/sesaquecruz/java-tasks-api/tags)
- [Tasks App (frontend)](https://hub.docker.com/r/sesaquecruz/react-tasks-app/tags)

## Contributing

Contributions are welcome! If you find a bug or would like to suggest an enhancement, please make a fork, create a new branch with the bugfix or feature, and submit a pull request.

## License

This project is licensed under the MIT License. See [LICENSE](./LICENSE) file for more information.
