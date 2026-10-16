
variable "aws_region" {
  description = "AWS region for ShopSphere"
  type        = string
  default     = "eu-north-1"
}

variable "project_name" {
  description = "Prefix for ShopSphere resources"
  type        = string
  default     = "shopsphere"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "dev"
}

variable "vpc_cidr" {
  description = "CIDR block for the ShopSphere VPC"
  type        = string
  default     = "10.30.0.0/16"
}

variable "image_tag" {
  description = "ECR tag to deploy"
  type        = string
  default     = "v2"
}

variable "task_cpu" {
  description = "Fargate task CPU units"
  type        = number
  default     = 256
}

variable "task_memory" {
  description = "Fargate task memory in MiB"
  type        = number
  default     = 512
}

variable "desired_count" {
  description = "Number of running ECS tasks"
  type        = number
  default     = 2

  validation {
    condition     = var.desired_count >= 1 && var.desired_count <= 4
    error_message = "desired_count must be between 1 and 4 for this lab."
  }
}