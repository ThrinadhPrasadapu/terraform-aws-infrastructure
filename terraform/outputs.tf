
# Terraform Outputs


output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.ec2.public_ip
}

output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main_vpc.id
}

output "subnet_id" {
  description = "Subnet ID"
  value       = aws_subnet.public_subnet.id
}

