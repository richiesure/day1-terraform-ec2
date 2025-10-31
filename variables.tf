# variables.tf - Define all input variables for the infrastructure

# AWS Region where resources will be created
variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "eu-west-2"  # London region
}

# AMI ID for Amazon Linux 2023 in eu-west-2 (guaranteed free tier)
variable "ami_id" {
  description = "AMI ID for EC2 instance (Amazon Linux 2023)"
  type        = string
  default     = "ami-0acc77abdfc7ed5a6"  # Amazon Linux 2023 in eu-west-2
}

# EC2 Instance type
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"  # Free tier eligible
}

# SSH Key pair name
variable "key_name" {
  description = "SSH key pair name for EC2 access"
  type        = string
  default     = "VM2"  # Your existing key pair (without .pem extension)
}
