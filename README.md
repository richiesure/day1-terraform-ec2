# Day 1: Terraform EC2 Instance Deployment

## Project Description
This project deploys a single EC2 instance on AWS using Terraform Infrastructure as Code (IaC).

## What This Does
- Provisions an Ubuntu 24.04 EC2 instance
- Installs and configures Nginx web server
- Applies proper tags for resource management
- Outputs instance details (ID, IP, DNS)

## Prerequisites
- AWS CLI configured with valid credentials
- Terraform installed (v1.0+)
- AWS account with EC2 permissions

## Files Structure
```
.
├── main.tf        # Main infrastructure configuration
├── variables.tf   # Input variables definitions
├── outputs.tf     # Output values after deployment
└── README.md      # This file
```

## Usage

### Initialize Terraform
```bash
terraform init
```

### Review the deployment plan
```bash
terraform plan
```

### Deploy the infrastructure
```bash
terraform apply
```

### Destroy the infrastructure
```bash
terraform destroy
```

## Learning Objectives
- Understand Infrastructure as Code principles
- Learn Terraform basics (providers, resources, variables, outputs)
- Practice Git workflow for IaC projects
- Deploy and manage AWS EC2 instances

## Author
DevOps Learning Journey - Day 1
