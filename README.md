🌩️ Terraform AWS Infrastructure Project

A complete Infrastructure-as-Code (IaC) project using Terraform to provision AWS resources including:

VPC

Public Subnet

Internet Gateway

Route Table + Association

Security Group

EC2 Instance

Key Pair

This project demonstrates real-world cloud provisioning skills suitable for DevOps & Cloud Engineer roles.

🚀 Architecture Overview

             +---------------------------+
             |        AWS Cloud          |
             |                           |
             |   +-------------------+   |
             |   |      VPC          |   |
             |   |   10.0.0.0/16     |   |
             |   |                   |   |
             |   |  +-------------+  |   |
     Internet <--+---+-->|   Subnet   |--+---+
             |   |  | 10.0.1.0/24 |  |   |
             |   |  +-------------+  |   |
             |   |        |           |   |
             |   |   +---------+      |   |
             |   |   |  EC2    |      |   |
             |   |   +---------+      |   |
             |   +-------------------+   |
             +---------------------------+
             
📁 Project Structure

terraform-aws-infrastructure
│
├── terraform/
│   ├── main.tf
│   ├── provider.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── .keep
│
└── README.md

🛠️ Resources provisioned
✔ VPC

Custom VPC with DNS support enabled.

✔ Public Subnet

With auto-assign public IP enabled.

✔ Internet Gateway

For outbound access.

✔ Route Table & Association

Default route to Internet Gateway.

✔ Security Group

Allows:

SSH (22)

App port (8080)

✔ EC2 Instance

Amazon Linux 2023 (ap-south-1)
Instance type: t2.micro
Attached to the subnet + SG.

✔ Key Pair

Uses your local SSH public key (~/.ssh/id_rsa.pub).

⚙️ How to Run

Navigate into the terraform folder:

cd terraform

1️⃣ Initialize Terraform
terraform init

2️⃣ Validate the configuration
terraform validate

3️⃣ Preview the changes
terraform plan

4️⃣ Apply and create AWS infra
terraform apply


Type yes when prompted.

🧹 Destroy Resources (Important)
terraform destroy


This prevents unnecessary AWS charges.

📤 Outputs

After apply completes, Terraform prints:

EC2 Public IP

VPC ID

Subnet ID

Example:

ec2_public_ip = "65.2.xxx.xxx"
vpc_id        = "vpc-0a12345bcd"
subnet_id     = "subnet-05abc123"






