terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "networking" {
  source = "./modules/networking"

  project_name        = var.project_name
  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  availability_zone   = var.availability_zone
}

module "security" {
  source = "./modules/security"

  project_name = var.project_name
  vpc_id       = module.networking.vpc_id
  admin_cidr   = var.admin_cidr
  app_port     = var.app_port
}

module "iam" {
  source = "./modules/iam"

  project_name = var.project_name
}

module "bastion" {
  source = "./modules/bastion"

  project_name         = var.project_name
  ami_id               = var.ami_id
  instance_type        = var.instance_type
  subnet_id            = module.networking.public_subnet_id
  security_group_id    = module.security.bastion_security_group_id
  key_name             = var.key_name
  iam_instance_profile = module.iam.instance_profile_name
}

module "app_server" {
  source = "./modules/app-server"

  project_name         = var.project_name
  ami_id               = var.ami_id
  instance_type        = var.instance_type
  subnet_id            = module.networking.private_subnet_id
  security_group_id    = module.security.app_security_group_id
  iam_instance_profile = module.iam.instance_profile_name
}
