output "cluster_name" {
  description = "The name of the EKS cluster"
  value       = aws_eks_cluster.dtg.name
}

output "cluster_endpoint" {
  description = "The endpoint for the EKS cluster"
  value       = aws_eks_cluster.dtg.endpoint
}

output "cluster_arn" {
  description = "The ARN of the EKS cluster"
  value       = aws_eks_cluster.dtg.arn
}

output "sa_role_arn" {
  description = "IAM Role ARN associated with the Kubernetes Service Account"
  value       = aws_iam_role.sa_role.arn
}

output "k8s_service_account_name" {
  description = "Kubernetes Service Account Name"
  value       = kubernetes_service_account.sa.metadata[0].name
}
