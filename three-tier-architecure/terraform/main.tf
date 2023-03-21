
provider "aws" {
  region = "us-east-1"
}


# RUNNING MODULES

module "network" {
  source                = "./modules/network"
  vpc_cidr              = "${var.vpc_cidr}"
  pub_subnet_b_cidr  = "${var.pub_subnet_b_cidr}"
  pub_subnet_c_cidr  = "${var.pub_subnet_c_cidr}"
  prv_subnet_b_cidr = "${var.prv_subnet_b_cidr}"
  prv_subnet_c_cidr = "${var.prv_subnet_c_cidr}"
}
