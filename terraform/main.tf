provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./vpc"
}

module "eks" {
  source = "./eks"
  vpc_id = module.vpc.vpc_id
  private_subnets = module.vpc.private_subnets
  key_name = var.key_name
}

module "iam" {
  source = "./iam"
}

module "rbac" {
  source = "./rbac"
}