# Variables for EKS cluster configuration
variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default     = "dtg-cluster"
}

variable "namespace" {
  description = "The Kubernetes namespace where the service account will be created"
  type        = string
  default     = "oidc_eks"  # Set the default namespace
}

variable "service_account_name" {
  description = "The name of the Kubernetes Service Account"
  type        = string
}

# Variables for AWS configuration
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

# Variables for Azure Entra ID configuration
variable "azuread_client_id" {
  description = "The client ID for Azure AD"
  type        = string
}

variable "azuread_client_secret" {
  description = "The client secret for Azure AD"
  type        = string
  sensitive   = true
}

variable "azuread_tenant_id" {
  description = "The tenant ID for Azure AD"
  type        = string
}

# Variables for Terraform state configuration
variable "s3_bucket" {
  description = "The name of the S3 bucket for Terraform state"
  type        = string
}

variable "s3_key" {
  description = "The key for the Terraform state file in the S3 bucket"
  type        = string
}
# Name of the DynamoDB table used for state locking.
variable "dynamodb_table" {
  description = "The name of the DynamoDB table for state locking"
  type        = string
}

# Optionally, variables for additional configuration
variable "tags" {
  description = "Tags to apply to AWS resources"
  type        = map(string)
  default     = {
    Environment = "dev"
    Project     = "eks-oidc"
  }
}
