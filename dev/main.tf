provider "aws" {
  region = "${var.region}"
}

module "vpc" {
  source  = "app.terraform.io/vdsec/vpc/aws"
  version = "1.5"

  region = "${var.region}"
  environment = "${var.environment}"

  vpc_cidr = "10.0.0.0/16"
  public_subnets = ["10.0.1.0/24"]
  private_subnets = ["10.0.100.0/24"]
}
