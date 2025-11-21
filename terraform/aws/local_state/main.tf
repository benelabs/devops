terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "us-east-1"
}

# 1. AUTOMATICALLY find the latest Amazon Linux 2 AMI
# (This is usually the only OS allowed in strict labs)
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "app_server" {
  # 2. Use the ID found above
  ami           = data.aws_ami.amazon_linux.id 
  
  # 3. Switch to t3.micro (t2 is sometimes blocked in newer labs)
  instance_type = "t3.micro"

  tags = {
    Name = "Terraform_Lab_Box"
  }
}
