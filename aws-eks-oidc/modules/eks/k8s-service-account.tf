# Defines the Kubernetes Service Account and links it to an IAM role using IRSA.
##Creating service account
## Enabling EKS OIDC provider
## Creating  IAM Role for Service Accounts (IRSA)
#####################################
# # Retrieve EKS cluster details
data "aws_eks_cluster" "cluster" {
  name = aws_eks_cluster.dtg.name
}
# Authenticate with EKS cluster
data "aws_eks_cluster_auth" "cluster" {
  name = aws_eks_cluster.dtg.name
}
# # Create an OIDC provider for the EKS cluster
resource "aws_iam_openid_connect_provider" "eks_oidc" {
  client_id_list  = ["sts.amazonaws.com"]
  thumbprint_list = [data.aws_eks_cluster.cluster.identity[0].oidc[0].issuer]
  url             = data.aws_eks_cluster.cluster.identity[0].oidc[0].issuer
}
# # Create an IAM role for the Kubernetes Service Account (IRSA)
resource "aws_iam_role" "sa_role" {
  name = "${var.cluster_name}-sa-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Federated = aws_iam_openid_connect_provider.eks_oidc.arn
        }
        Action = "sts:AssumeRoleWithWebIdentity"
        Condition = {
          StringEquals = {
            "eks.amazonaws.com:sub" = "system:serviceaccount:${var.namespace}:${var.service_account_name}"
          }
        }
      }
    ]
  })
}
## Attach a policy to the IAM role (e.g., S3 ReadOnly access)
resource "aws_iam_role_policy_attachment" "sa_policy_attachment" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
  role       = aws_iam_role.sa_role.name
}
#  Create the Kubernetes Service Account with the IAM role annotation
resource "kubernetes_service_account" "sa" {
  metadata {
    name      = var.service_account_name
    namespace = var.namespace
    annotations = {
      "eks.amazonaws.com/role-arn" = aws_iam_role.sa_role.arn
    }
  }
}
