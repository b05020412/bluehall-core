provider "aws" {
  region = "${var.region}"
}

module "vpc" {
  source  = "app.terraform.io/vdsec/vpc/aws"
  version = "1.6"

  region = "${var.region}"
  environment = "${var.environment}"

  vpc_cidr = "${var.vpc_cidr}"
  public_subnets = "${var.public_subnets}"
  private_subnets = "${var.private_subnets}"
}
