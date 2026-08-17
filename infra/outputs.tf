output "cluster_endpoint" {
  value = data.aws_eks_cluster.existing.endpoint
}

output "cluster_name" {
  value = data.aws_eks_cluster.existing.name
}

output "cluster_security_group_id" {
  value = data.aws_eks_cluster.existing.vpc_config[0].cluster_security_group_id
}

output "vpc_id" {
  value = data.aws_vpc.existing.id
}

output "public_subnet_ids" {
  value = local.public_subnet_ids
}

output "private_subnet_ids" {
  value = local.private_subnet_ids
}

output "general_worker_status" {
  value = data.aws_eks_node_group.general_worker.status
}

output "gpu_training_status" {
  value = data.aws_eks_node_group.gpu_training.status
}
