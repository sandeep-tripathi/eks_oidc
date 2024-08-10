variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "dtg-cluster"
}

variable "region" {
  description = "The AWS region to deploy the cluster in"
  type        = string
  default     = "eu-central-1"
}

variable "vpc_id" {
  description = "The ID of the VPC where the cluster will be deployed"
  type        = string
}

variable "subnet_ids" {
  description = "List of subnet IDs where the cluster will be deployed"
  type        = list(string)
}

variable "namespace" {
  description = "The Kubernetes namespace where the service account will be created"
  type        = string
  default     = "default"
}

variable "service_account_name" {
  description = "The name of the Kubernetes Service Account"
  type        = string
}

# Add more variables as needed
