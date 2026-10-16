
output "ecr_repository_url" {
  description = "URL of the ShopSphere ECR repository"
  value       = aws_ecr_repository.app.repository_url
}

output "ecs_cluster_name" {
  description = "Name of the ECS cluster"
  value       = aws_ecs_cluster.main.name
}

output "ecs_service_name" {
  description = "Name of the ECS service"
  value       = aws_ecs_service.app.name
}

output "load_balancer_url" {
  description = "Public URL for the ShopSphere website"
  value       = "http://${aws_lb.app.dns_name}"
}

output "cloudwatch_log_group" {
  description = "CloudWatch log group for the application"
  value       = aws_cloudwatch_log_group.app.name
}

output "vpc_id" {
  description = "ShopSphere VPC ID"
  value       = aws_vpc.main.id
}