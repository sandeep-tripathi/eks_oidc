output "eks_cluster_name" {
  description = "The name of the EKS cluster"
  value       = module.eks.cluster_name
}

output "eks_cluster_endpoint" {
  description = "The endpoint for the EKS cluster"
  value       = module.eks.cluster_endpoint
}

output "eks_cluster_arn" {
  description = "The ARN of the EKS cluster"
  value       = module.eks.cluster_arn
}

output "k8s_service_account_name" {
  description = "The Kubernetes Service Account Name"
  value       = module.eks.k8s_service_account_name
}

output "sa_role_arn" {
  description = "IAM Role ARN associated with the Kubernetes Service Account"
  value       = module.eks.sa_role_arn
}
