variable "region" {
  default = "us-east-1"
  description = "The name of region"
}

variable "environment" {
  default = "dev"
  description = "The name of the environment"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
  description = "VPC CIDR"
}

variable "public_subnets" {
  default = ["10.0.1.0/24"]
  description = "Public Subnets"
}

variable "private_subnets" {
  default = ["10.0.100.0/24"]
  description = "Private Subnets"
}
