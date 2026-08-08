# Cloud DevOps Lab 2026

## Project Overview

This project implements a cloud-based DevOps environment using infrastructure as code, configuration management, containerization, CI/CD, monitoring, and supporting automation.

The project is organized into separate components so that infrastructure, application deployment, CI/CD, monitoring, and documentation can be developed and maintained independently.

## Project Structure

```text
cloud-devops-lab-2026/
├── app/
├── ansible/
├── docker/
├── docs/
├── jenkins/
├── monitoring/
├── nginx/
├── scripts/
└── terraform/
```

## Technology Areas

* AWS
* Terraform
* Ansible
* Docker
* Jenkins
* Nginx
* Prometheus
* Grafana
* Alertmanager
* GitHub

## Infrastructure

Terraform is used to provision and manage the AWS infrastructure.

The Terraform configuration is organized into reusable modules:

```text
terraform/
├── modules/
│   ├── networking/
│   ├── security/
│   ├── iam/
│   ├── bastion/
│   ├── app-server/
│   └── backend/
```

The infrastructure configuration will be documented as the implementation progresses.

## Configuration Management

Ansible is used for server configuration and application environment setup.

```text
ansible/
├── ansible.cfg
├── inventory/
├── playbooks/
└── roles/
```

## Application and Containers

The application source and container configuration are maintained under `app/` and `docker/`.

```text
app/
├── Dockerfile
├── requirements.txt
├── src/
└── tests/
```

Docker Compose configuration is maintained under:

```text
docker/
└── docker-compose.yml
```

## CI/CD

Jenkins configuration is maintained under:

```text
jenkins/
└── Jenkinsfile
```

The CI/CD implementation will be documented after the pipeline is configured.

## Monitoring

Monitoring configuration is organized under:

```text
monitoring/
├── prometheus/
├── grafana/
└── alertmanager/
```

The monitoring setup and alerting configuration will be documented as they are implemented.

## Documentation

Project documentation is maintained under `docs/`.

```text
docs/
├── architecture-diagram.png
├── operations-guide.md
└── decision-log.md
```

## Setup

Detailed installation and deployment instructions will be added as each infrastructure and application component is implemented.

## Project Status

The project is currently under development.

### Current Phase

**Phase 1 – Repository and Project Setup**

* Repository initialized
* GitHub project board created
* Project structure created
* `.gitignore` configured
* README initialized

### Upcoming Phases

1. Terraform
2. Ansible
3. Docker and CI/CD
4. Monitoring and Observability
5. Documentation

## License

This project is developed as part of the Cloud DevOps Lab assignment.
