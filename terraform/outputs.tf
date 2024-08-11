output "cluster_name" {
  value = aws_eks_cluster.hello_world_cluster.name
}

output "cluster_endpoint" {
  value = aws_eks_cluster.hello_world_cluster.endpoint
}

output "ecr_repository_url" {
  value = aws_ecr_repository.hello_world_repo.repository_url
}
