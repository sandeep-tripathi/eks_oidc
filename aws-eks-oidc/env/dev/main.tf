provider "aws" {
  region = "eu-central-1"
}

module "network" {
  source = "../../modules/network"
}

module "eks" {
  source               = "../../modules/eks"
  vpc_id               = module.network.vpc_id
  subnet_ids           = module.network.subnet_ids
  cluster_name         = var.cluster_name
  namespace            = "oidc_eks"  # Set the namespace to oidc_eks
  service_account_name = var.service_account_name
}
