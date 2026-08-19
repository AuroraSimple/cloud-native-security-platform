module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.0"

  cluster_name    = "k8s-project-eks"
  cluster_version = "1.35"

  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  enable_irsa = true

  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true

  enable_cluster_creator_admin_permissions = true
  cluster_addons = {
    vpc-cni    = {}
    coredns    = {}
    kube-proxy = {}

    eks-pod-identity-agent = {}

    aws-ebs-csi-driver = {
      pod_identity_association = [
        {
          role_arn        = aws_iam_role.ebs_csi.arn
          service_account = "ebs-csi-controller-sa"
        }
      ]
    }

    metrics-server = {}
  }
  eks_managed_node_groups = {
    general-worker = {
      instance_types = ["m5.large"]
      min_size       = 2
      max_size       = 4
      desired_size   = 2
      disk_size      = 50
      labels         = { role = "general", project = "k8s-project" }
    }
    gpu-training = {
      ami_type       = "AL2023_x86_64_NVIDIA"
      instance_types = ["g4dn.xlarge"]
      min_size       = 0
      max_size       = 2
      desired_size   = var.gpu_desired_size
      disk_size      = 100
      labels         = { role = "gpu", project = "k8s-project" }
      taints = {
        dedicated = { key = "dedicated", value = "gpu-training", effect = "NO_SCHEDULE" }
      }
    }
  }
}
