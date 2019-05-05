variable "region" {
  default = "us-east-1"
  description = "The name of region"
}

variable "prefix" {
  default = "paraconsistent.com"
  description = "The name of our org, i.e. example.com."
}

variable "environment" {
  default = "dev"
  description = "The name of the environment"
}
