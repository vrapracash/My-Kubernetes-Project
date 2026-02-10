terraform {
  backend "s3" {
    bucket         = "org-terraform-state"
    key            = "eks/uat/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
