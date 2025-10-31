# main.tf - Main infrastructure configuration

# Define the AWS provider and region
provider "aws" {
  region = var.aws_region
}

# Create a security group to allow HTTP and SSH traffic
resource "aws_security_group" "web_sg" {
  name        = "devops-day1-web-sg"
  description = "Allow HTTP and SSH inbound traffic"

  # Allow HTTP from anywhere
  ingress {
    description = "HTTP from anywhere"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow SSH from anywhere (in production, restrict this to your IP)
  ingress {
    description = "SSH from anywhere"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic
  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "DevOps-Day1-WebSG"
    Environment = "Development"
    ManagedBy   = "Terraform"
  }
}

# Create an EC2 instance
resource "aws_instance" "web_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name  # Add SSH key

  # Attach the security group
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  # Tag the instance for identification
  tags = {
    Name        = "DevOps-Day1-WebServer"
    Environment = "Development"
    ManagedBy   = "Terraform"
    Project     = "DevOps-Learning"
  }

  # Enable detailed monitoring
  monitoring = true

  # Add a simple user data script to install httpd (Apache)
  user_data = <<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "<h1>DevOps Day 1 - Deployed with Terraform</h1>" > /var/www/html/index.html
              EOF
}
