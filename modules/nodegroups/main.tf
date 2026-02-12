module "managed_nodegroup" {
  source  = "terraform-aws-modules/eks/aws//modules/eks-managed-node-group"

  cluster_name = var.cluster_name
  subnet_ids   = var.subnets

  name = "uat-app-nodes"

  instance_types = ["m5.large"]

  min_size     = 2
  max_size     = 8
  desired_size = 3

  labels = {
    environment = "uat"
    workload    = "applications"
  }
}