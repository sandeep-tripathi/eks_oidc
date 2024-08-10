resource "aws_eks_cluster" "dtg" {
  name     = var.cluster_name
  role_arn = module.iam_roles.eks_cluster_role_arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_policy_attachment
  ]
}
