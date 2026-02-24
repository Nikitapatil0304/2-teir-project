This project provisions a complete AWS infrastructure using Terraform.

📌 Architecture Overview

This Terraform configuration creates:

✅ Custom VPC

✅ Public Subnet

✅ Private Subnet

✅ Internet Gateway

✅ Default Route Table

✅ Security Group (SSH, HTTP, MySQL)

✅ Public EC2 Instance (App Server)

✅ Private EC2 Instance (DB Server)

✅ Remote Backend using S3

🏗️ Infrastructure Components
1️⃣ VPC

Creates a custom VPC with configurable CIDR block.

2️⃣ Subnets

Public Subnet (Auto assigns public IP)

Private Subnet

3️⃣ Internet Gateway

Attached to VPC to allow internet access.

4️⃣ Security Group

Allows:

SSH (22)

HTTP (80)

MySQL (3306)

5️⃣ EC2 Instances

Public EC2 (Application Server)

Private EC2 (Database Server)

📂 Project Structure
.
├── main.tf
├── variables.tf
├── terraform.tfvars
├── README.md

⚙️ Backend Configuration

Remote backend is configured using AWS S3:

backend "s3" {
  bucket = "your-bucket-name"
  key    = "terraform.tfstate"
  region = "ap-south-1"
}

🛠️ Prerequisites

Terraform installed

AWS CLI configured

AWS IAM user with required permissions
🚀 How to Deploy
1️⃣ Initialize Terraform
terraform init
2️⃣ Validate Configuration
terraform validate
3️⃣ Plan Infrastructure
terraform plan
4️⃣ Apply Infrastructure
terraform apply

Type yes when prompted.

📌 Variables Used
Variable	Description
region	AWS region
vpc_cidr_block	VPC CIDR
public_cidr	Public subnet CIDR
pvt_cidr	Private subnet CIDR
instance_type	EC2 instance type
ami	AMI ID
key	Key pair name

🔐 Security Notes

Do not commit terraform.tfvars if it contains sensitive values.

Use IAM roles instead of access keys in production.

Restrict 0.0.0.0/0 access in production environments
