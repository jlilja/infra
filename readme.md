# Infra for managed resources

## Overview

This repository holds the bootstrapping and configuration of various cloud and on-prem hosted solutions related to my digital infrastructure. The purpose of this project is to keep and maintain a blueprint of how different resources are setup and utilise off-the-shelf tooling with maintainability, security, upgradeability, and governance in mind.

If applicable, resources shall be provisioned and managed through Terraform. Terraform is vendor agnostic, which enables the exporting and importing of data between resources regardless of which vendor they are.

If a Terraform provider is not available, and Terraform's data type is neither an option, Ansible is the second preferred choice of configuration.

## Directory structure

```
📂 infra
├─📁 .github    # Github actions workflows, repostory settings, and dependabot settings.
├─📁 ansible    # Ansible playbooks.
├─📁 k8s        # Experimental work using Minikube.
└─📁 terraform  # Terraform configuration.
```

## Resources in version control

### Ansible

* Manages setup, configuration, and maintenence of a Pihole instance running on Raspberry Pi.
* Manages the settings for Edgerouter router running on EdgeOS.
* Manages the setup, bootstrapping, and managing minikube kubernetes cluster.

### k8s

> [!NOTE]
> This is still under development and features a lot of WIP and unfinished work.

* Setting up functioning application of Home assistant.

### Terraform

* Managing firewall rules for edgerouter routers.
* Setting dns records for cloudflare domain(s).
* Managing local dns records via pihole dns.
