# variables.tf - Define all input variables

# AWS Region where resources will be created
variable "aws_region" {
  description = "AWS region for resources"
  type        = string
  default     = "eu-west-2"  # London region (closest to you in Wales)
}

# AMI ID for Ubuntu 24.04 in eu-west-2
variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-0b4c7755cdf0d9219"  # Ubuntu 24.04 LTS
}

# Instance type (size of the server)
variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"  # Free tier eligible
}
