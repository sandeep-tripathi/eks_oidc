module "vpc" {
  source = "./vpc.tf"
}

module "security_groups" {
  source = "./security-groups.tf"
}

module "iam_roles" {
  source = "./iam-roles.tf"
}

module "eks_cluster" {
  source = "./eks-cluster.tf"
}

module "eks_node_group" {
  source = "./eks-node-group.tf"
}

module "k8s_service_account" {
  source               = "./k8s-service-account.tf"
  namespace            = var.namespace
  service_account_name = var.service_account_name
}
