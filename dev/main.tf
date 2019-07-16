provider "aws" {
  region = "${var.region}"
}

module "vpc" {
  source  = "github.com/saillinux/terraform-aws-vpc"
  version = "1.6"

  region = "${var.region}"
  environment = "${var.environment}"

  vpc_cidr = "${var.vpc_cidr}"
  public_subnets = "${var.public_subnets}"
  private_subnets = "${var.private_subnets}"
}
