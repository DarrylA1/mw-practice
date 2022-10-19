terraform {
  backend "s3" {
    bucket         = "mw-lab-bucket-78647126418589"
    key            = "mw-lab-bucket-8647126418589-security-tfstates"
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
        name = "tag:Name"
        values = [var.vpc_name, var.vpc_id]
    }

}