# outputs.tf - Define what information to display after deployment

# Display the EC2 instance ID
output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.web_server.id
}

# Display the public IP address
output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.web_server.public_ip
}

# Display the public DNS name
output "instance_public_dns" {
  description = "Public DNS name of the EC2 instance"
  value       = aws_instance.web_server.public_dns
}

# Display the instance state
output "instance_state" {
  description = "State of the EC2 instance"
  value       = aws_instance.web_server.instance_state
}
