## Medium article:
 https://medium.com/@sandeepp.tripathi/aws-eks-authentication-with-microsoft-entra-id-using-terraform-1a2f43fd34e7
 
## Terraform code to deploy an AWS EKS cluster with OIDC authentication using Azure Entra ID.
## Folder structure
![image](https://github.com/user-attachments/assets/ee4c5898-1280-45ed-beef-65e57ea963e4)



## Usage: Example for dev environement:
Go to the folder for the environemtn you want to deploy in, eg **dev** environement
1. Path for the dev environment:
   ```bash
    cd aws-eks-oidc/env/dev/
   ```
2. Initialize the environment:
   ```bash
   terraform init && terraform plan
   ```
3. Apply the Terraform code:
   ```bash
   terraform apply
   ```
