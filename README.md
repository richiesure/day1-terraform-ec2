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



# DAY 1 COMPLETION SUMMARY
**Date:** October 31, 2025
**Task:** Junior DevOps - Infrastructure as Code with Terraform

---

## 🎯 What You Accomplished

### 1. **Environment Setup**
- ✅ Installed Git (v2.43.0)
- ✅ Installed Terraform (v1.13.4)
- ✅ Installed AWS CLI (v2.31.26)
- ✅ Configured AWS credentials

### 2. **Infrastructure Deployed**
- ✅ **EC2 Instance**: t3.micro (Amazon Linux 2023)
- ✅ **Security Group**: HTTP (port 80) and SSH (port 22) access
- ✅ **Web Server**: Apache httpd automatically installed
- ✅ **Monitoring**: Enabled detailed CloudWatch monitoring
- ✅ **Region**: eu-west-2 (London)

### 3. **Git & Version Control**
- ✅ Initialized Git repository
- ✅ Created .gitignore for Terraform files
- ✅ Made initial commit
- ✅ Pushed to GitHub: https://github.com/richiesure/day1-terraform-ec2.git

### 4. **Infrastructure Details**
```
Instance ID:     i-05e98df99e2fc9305
Public IP:       18.175.238.16
Public DNS:      ec2-18-175-238-16.eu-west-2.compute.amazonaws.com
Instance Type:   t3.micro
AMI:             ami-0acc77abdfc7ed5a6 (Amazon Linux 2023)
Security Group:  sg-0e5d9be2afd0fd61c (devops-day1-web-sg)
SSH Key:         VM2
Status:          ✅ RUNNING
Web Server:      ✅ ACCESSIBLE at http://18.175.238.16
```

---

## 📚 Key DevOps Concepts Learned

### Infrastructure as Code (IaC)
- Defined infrastructure in declarative code (Terraform)
- Version controlled infrastructure configurations
- Reproducible and consistent deployments

### Terraform Fundamentals
- **Providers**: AWS provider configuration
- **Resources**: EC2 instances, Security Groups
- **Variables**: Parameterized configurations
- **Outputs**: Displayed important resource information
- **State Management**: Terraform tracks infrastructure state

### AWS Services Used
- **EC2**: Virtual machines in the cloud
- **Security Groups**: Virtual firewalls controlling traffic
- **User Data**: Automated instance configuration scripts

### Git Workflow
- Repository initialization
- Staging and committing changes
- Remote repository management (GitHub)
- .gitignore best practices

---

## 🐛 Challenges Solved

### Challenge 1: Free Tier Eligibility
**Problem**: t2.micro not available in account
**Solution**: Queried AWS API to find t3.micro was free-tier eligible
**Command Used**: 
```bash
aws ec2 describe-instance-types --filters "Name=free-tier-eligible,Values=true"
```

### Challenge 2: Web Server Not Accessible
**Problem**: HTTP requests timing out
**Solution**: Added security group with ingress rules for port 80
**Lesson**: Always configure firewall rules for services!

### Challenge 3: GitHub Authentication
**Problem**: Password authentication deprecated
**Solution**: Used Personal Access Token (PAT) for authentication
**Lesson**: Modern Git uses token-based authentication

---

## 📝 Files Created
```
day1-terraform-ec2/
├── .git/                 # Git repository data
├── .gitignore           # Files to exclude from Git
├── main.tf              # Main Terraform configuration
├── variables.tf         # Input variables
├── outputs.tf           # Output values
├── README.md            # Project documentation
└── DAY1-SUMMARY.md      # This file
```

---

## 💡 Real-World Application

This task mirrors what junior DevOps engineers do daily:
- **Provisioning infrastructure** using IaC tools
- **Version controlling** infrastructure code
- **Documenting** deployments and configurations
- **Troubleshooting** connectivity and security issues
- **Following best practices** (tagging, monitoring, security)

<img width="1651" height="789" alt="image" src="https://github.com/user-attachments/assets/64a2fe6f-b697-4af8-8a76-9fbfcefd3711" />




## Author

IamEfemena (Richiesure)
