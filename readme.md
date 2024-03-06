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

## Hardware

| Nickname | Type     | Brand     | Model                  | CPU                         | RAM               | GPU                | OS               |
|----------|----------|-----------|------------------------|-----------------------------|-------------------|--------------------|------------------|
| G&T      | Headless | Mac Mini  | Late 2014 (Macmini7,1) | 2.6 GHz Intel Core i5       | 8GB 1600 MHz DDR3 | Intel Iris 1536 MB | Fedora 39 Server |
| Negroni  | Headless | Intel NUC | D54250WYK              | 1.3 Ghz Intel Core i5-4250U | 8GB 1600 MHz DDR3 | Intel HD Graphics  | Fedora 39 Server |
