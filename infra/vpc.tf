module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "~> 5.0"

  name = "k8s-project-eks-vpc"
  cidr = "10.20.0.0/16"
  azs  = ["ap-northeast-2a", "ap-northeast-2c"]

  private_subnets = ["10.20.0.0/19", "10.20.32.0/19"]
  public_subnets  = ["10.20.64.0/19", "10.20.96.0/19"]

  enable_nat_gateway = true
  single_nat_gateway = true

  public_subnet_tags = { "kubernetes.io/role/elb" = 1 }
  private_subnet_tags = {
    "kubernetes.io/role/internal-elb"       = 1
    "kubernetes.io/cluster/k8s-project-eks" = "shared"
  }
}