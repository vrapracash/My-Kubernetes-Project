module "backend_irsa" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts-eks"

  role_name = "uat-backend-irsa"

  attach_policy_arns = [
    "arn:aws:iam::aws:policy/AmazonSecretsManagerReadWrite"
  ]

  oidc_providers = {
    eks = {
      provider_arn = module.eks.oidc_provider_arn
      namespace_service_accounts = ["uat-backend:backend-sa"]
    }
  }
}