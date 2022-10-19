terraform {
  backend "s3" {
    bucket         = "mw-lab-bucket-78647126418589"
    key            = "mw-lab-bucket-8647126418589-ec2-tfstates"
    dynamodb_table = "terraform-lock"
  }
}

provider "aws" {
  region = "us-east-1"
}

locals {
  region = var.region
  tags = {
    Environment = var.environment
  }
}

data "aws_vpc" "mw-practice-vpc" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name, var.vpc_id]
  }
}

data "aws_security_group" "custom_icmp_sg" {
  id = var.vpc_security_group_ids
}

data "aws_subnet" "private_subnet_a" {
  id = var.private_subnet_a
}

data "aws_subnet" "public_subnet_a" {
  id = var.public_subnet_a
}

# Deploying a single EC2 to ping from my IP

module "ec2_ping_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-ping-instance"

  ami                    = "ami-026b57f3c383c2eec"
  instance_type          = "t2.micro"
  key_name               = "mwpracticekp"
  monitoring             = true
  vpc_security_group_ids = [var.vpc_security_group_ids]
  subnet_id              = var.public_subnet_a

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}