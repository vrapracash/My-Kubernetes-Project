module "eks" {
  source           = "../../modules/eks"
  cluster_name     = "eks-uat"
  vpc_id            = var.vpc_id
  private_subnets   = var.private_subnets
}

module "nodegroups" {
  source       = "../../modules/nodegroups"
  cluster_name = module.eks.cluster_name
  subnets       = var.private_subnets
}

module "addons" {
  source       = "../../modules/addons"
  cluster_name = module.eks.cluster_name
}

module "namespaces" {
  source = "../../modules/namespaces"
}

module "iam_irsa" {
  source = "../../modules/iam"
}