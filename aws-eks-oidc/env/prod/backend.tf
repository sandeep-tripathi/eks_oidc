terraform {
  backend "s3" {
    bucket         = "my-terraform-state-bucket"
    key            = "env/dev/terraform.tfstate"
    region         = "eu-central-1"
    encrypt        = true
    dynamodb_table = "terraform-locks"
  }
}
