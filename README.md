# AWS EKS using OIDC with Entra ID
# Foler structure
aws-eks-oidc/
├── modules/
│   ├── eks/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── outputs.tf
│   │   ├── eks-cluster.tf
│   │   ├── eks-node-group.tf
│   │   ├── iam-roles.tf
│   │   ├── k8s-service-account.tf
│   │   ├── security-groups.tf
│   │   └── vpc.tf
│   └── ...
├── env/
│   ├── dev/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── terraform.tfvars
│   │   ├── backend.tf
│   │   └── provider.tf
│   ├── prod/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── terraform.tfvars
│   │   ├── backend.tf
│   │   └── provider.tf
│   └── ...
├── .gitignore
├── README.md
└── provider.tf
