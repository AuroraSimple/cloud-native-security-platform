output "cluster_endpoint" { value = module.eks.cluster_endpoint }
output "cluster_name" { value = module.eks.cluster_name }
output "cluster_security_group_id" { value = module.eks.cluster_security_group_id }
output "oidc_provider_arn" { value = module.eks.oidc_provider_arn }
output "train_repo_url" { value = aws_ecr_repository.train.repository_url }
output "serving_repo_url" { value = aws_ecr_repository.serving.repository_url }