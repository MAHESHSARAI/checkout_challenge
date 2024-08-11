variable "region" {
  default = "eu-west-2"
}

variable "cluster_name" {
  default = "hello-world-cluster"
}

variable "node_instance_type" {
  default = "t3.medium"
}

variable "desired_capacity" {
  default = 2
}

variable "max_size" {
  default = 3
}

variable "min_size" {
  default = 1
}

variable "aws_account_id" {
  description = "Your AWS Account ID"
  type        = string
}

variable "ecr_repository_name" {
  description = "The name of the ECR repository"
  default     = "hello-world-go"
}

variable "image_tag" {
  description = "The tag for the Docker image"
  default     = "latest"
}
