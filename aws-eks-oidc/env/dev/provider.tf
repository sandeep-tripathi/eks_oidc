provider "aws" {
  region = var.region
}

provider "azuread" {
  client_id       = var.azuread_client_id
  client_secret   = var.azuread_client_secret
  tenant_id       = var.azuread_tenant_id
}
