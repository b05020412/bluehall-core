provider "aws" {
  region = "${var.region}"
}

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "2.5.0"

  name = "${var.name}"
  region = "${var.region}"
  environment = "${var.environment}"

  cidr = "${var.vpc_cidr}"
  public_subnets = "${var.public_subnets}"
  private_subnets = "${var.private_subnets}"
  
  tags = {
    Terraform = "true"
    Environment = "${var.environment}"
  }
}
