# main.tf - Main infrastructure configuration

# Define the AWS provider and region
provider "aws" {
  region = var.aws_region
}

# Create an EC2 instance
resource "aws_instance" "web_server" {
  ami           = var.ami_id
  instance_type = var.instance_type

  # Tag the instance for identification
  tags = {
    Name        = "DevOps-Day1-WebServer"
    Environment = "Development"
    ManagedBy   = "Terraform"
    Project     = "DevOps-Learning"
  }

  # Enable detailed monitoring
  monitoring = true

  # Add a simple user data script to install nginx
  user_data = <<-EOF
              #!/bin/bash
              apt-get update
              apt-get install -y nginx
              systemctl start nginx
              systemctl enable nginx
              echo "<h1>DevOps Day 1 - Deployed with Terraform</h1>" > /var/www/html/index.html
              EOF
}
