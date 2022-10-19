#############################################
######## VPC and Subnets ###############
#############################################
module "mw_practice_vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "mw-practice-vpc"
  cidr = "172.31.0.0/16"

  azs             = ["us-east-1a", "us-east-1b", "us-east-1c"]
  private_subnets = ["172.31.0.0/19", "172.31.32.0/19", "172.31.64.0/19"]
  public_subnets  = ["172.31.96.0/19", "172.31.128.0/19", "172.31.160.0/19"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "mw-lab"
  }
}