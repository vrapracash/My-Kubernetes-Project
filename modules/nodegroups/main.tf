locals {
  instance_type = "m5.large"
}

# Platform nodes
module "platform_nodes" {
  source  = "terraform-aws-modules/eks/aws//modules/eks-managed-node-group"

  name         = "uat-platform"
  cluster_name = var.cluster_name
  subnet_ids   = var.subnets

  instance_types = [local.instance_type]
  min_size       = 2
  max_size       = 4
  desired_size   = 2

  labels = {
    workload = "platform"
  }
}

# Backend nodes
module "backend_nodes" {
  source  = "terraform-aws-modules/eks/aws//modules/eks-managed-node-group"

  name         = "uat-backend"
  cluster_name = var.cluster_name
  subnet_ids   = var.subnets

  instance_types = [local.instance_type]
  min_size       = 3
  max_size       = 10
  desired_size   = 5

  labels = {
    workload = "backend"
  }
}

# Frontend nodes
module "frontend_nodes" {
  source  = "terraform-aws-modules/eks/aws//modules/eks-managed-node-group"

  name         = "uat-frontend"
  cluster_name = var.cluster_name
  subnet_ids   = var.subnets

  instance_types = [local.instance_type]
  min_size       = 2
  max_size       = 6
  desired_size   = 3

  labels = {
    workload = "frontend"
  }
}