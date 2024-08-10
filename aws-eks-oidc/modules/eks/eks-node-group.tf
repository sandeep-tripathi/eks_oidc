resource "aws_eks_node_group" "dtg_node_group" {
  cluster_name    = aws_eks_cluster.dtg.name
  node_group_name = "${var.cluster_name}-node-group"
  node_role_arn   = module.iam_roles.node_group_role_arn
  subnet_ids      = var.subnet_ids
  scaling_config {
    desired_size = 2
    max_size     = 5
    min_size     = 1
  }
}
