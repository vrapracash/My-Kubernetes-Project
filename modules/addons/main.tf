module "addons" {
  source  = "terraform-aws-modules/eks/aws//modules/eks-addons"

  cluster_name = var.cluster_name

  eks_addons = {
    vpc-cni   = {}
    coredns   = {}
    kube-proxy = {}
    aws-cloudwatch-metrics = {}
  }
}