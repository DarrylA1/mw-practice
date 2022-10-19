module "custom_icmp_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "lab-custom-icmp-sg"
  description = "Security group for icmp with custom ports open within VPC"
  vpc_id      = var.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_with_cidr_blocks = [
    {
      from_port   = 8
      to_port     = 0
      protocol    = "icmp"
      description = "icmp for user specified address blocks"
      cidr_blocks = "0.0.0.0/0"
    }
  ]
}