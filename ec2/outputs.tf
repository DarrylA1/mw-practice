
output "ec2_global_ips" {
  value = module.ec2_ping_instance.public_ip
}