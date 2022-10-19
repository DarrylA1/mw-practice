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
    type = string
}

variable "vpc_id" {
    description = "VPC ID for my mw training project"
    type = string
}
