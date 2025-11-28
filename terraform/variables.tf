
# Variables for AWS Infra


# AWS Region
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"   # Mumbai region
}

# AMI ID for EC2
variable "ami_id" {
  description = "AMI ID for EC2 instance"
  type        = string
  default     = "ami-0f58b397bc5c1f2e8"  # Amazon Linux 2023 (ap-south-1)
}

# SSH Key Path
variable "public_key_path" {
  description = "Path to your SSH public key"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

