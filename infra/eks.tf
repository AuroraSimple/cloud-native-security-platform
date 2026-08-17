data "aws_eks_cluster" "existing" {
  name = var.cluster_name
}

data "aws_eks_node_group" "general_worker" {
  cluster_name    = var.cluster_name
  node_group_name = "general-worker"
}

data "aws_eks_node_group" "gpu_training" {
  cluster_name    = var.cluster_name
  node_group_name = "gpu-training"
}
