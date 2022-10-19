variable "region" {
  description = "AWS Region"
  type        = string
}

variable "environment" {
  description = "Environment"
  type        = string
}

variable "vpc_name" {
  description = "VPC name for my mw training project"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for my mw training project"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "Security Group ID for pinging EC2 instance in public subnet"
  type        = string
}

variable "public_subnet_a" {
  description = "ID of public subnet a"
  type        = string
}

variable "public_subnet_b" {
  description = "ID of public subnet b"
  type        = string
}

variable "public_subnet_c" {
  description = "ID of public subnet c"
  type        = string
}

variable "private_subnet_a" {
  description = "ID of private subnet a"
  type        = string
}

variable "private_subnet_b" {
  description = "ID of private subnet b"
  type        = string
}

variable "private_subnet_c" {
  description = "ID of private subnet c"
  type        = string
}

variable "key_pair_name" {
  description = "Name of EC2 Key Pair"
  type        = string
}
