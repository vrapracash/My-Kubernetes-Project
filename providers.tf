terraform {
  backend "s3" {
    bucket         = "org-terraform-state-bucket"
    key            = "eks/uat/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}