terraform {
  backend "s3" {
    bucket         = "mw-lab-bucket-78647126418589"
    key            = "mw-lab-bucket-8647126418589-vpc-tfstates"
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

