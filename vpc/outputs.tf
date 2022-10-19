output "vpc_id" {
  value = module.mw_practice_vpc.vpc_id
}

output "private_subnets" {
  value = module.mw_practice_vpc.private_subnets
}

output "public_subnets" {
  value = module.mw_practice_vpc.public_subnets
}
