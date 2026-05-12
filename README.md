# Terraform Projects

This repository contains small, example Terraform projects organized by provider/type for quick reference and testing.

---

## Overview

Top-level folders:

- `aws/` — AWS examples (IAM user, S3 bucket).
- `azure/` — Azure examples (networking + Ubuntu VM templates by region).
- `docker/` — Docker examples (MariaDB and Nginx containers managed with Terraform).

Each subfolder is a standalone Terraform working directory. Use `terraform init` in the subfolder before planning or applying.

---

## Projects (short summary)

- **aws/create_user**
	- Files: `main.tf`, `provider.tf`, `versions.tf`.
	- Creates an IAM user and access key; configured for `us-east-1`.

- **aws/create-s3-bucket-terraform**
	- Files: `main.tf`, `provider.tf`.
	- Creates an S3 bucket and enables versioning. Provider configured with a profile and `us-east-2` region.

- **azure/eastus2**
	- Files: `main.tf`, `provider.tf`.
	- Full example provisioning resource group, VNet, subnet, NSG, public IP, NIC and an Ubuntu VM. Outputs public IP and SSH command.

- **azure/southcentralus**
	- Files mirror `eastus2` and act as a regional template.

- **docker/mariadb**
	- Files: `main.tf`, `provider.tf`, `variables.tf`.
	- Pulls `mariadb:11.2`, creates a persistent volume and container with env-based credentials.

- **docker/nginx**
	- Files: `main.tf`, `provider.tf`.
	- Pulls `nginx:latest` and runs a container exposing host port 8080.


