# main creds for AWS connection
variable "aws_access_key_id" {
  description = "AWS access key"
}

variable "aws_secret_access_key" {
  description = "AWS secret access key"
}

variable "ecs_cluster" {
  description = "ECS cluster name"
  default     = "fizzbuzz-cluster"
}

variable "ecs_key_pair_name" {
  description = "ECS key pair name"
}

variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "availability_zone" {
  description = "availability zone used for the demo, based on region"

  default = {
    us-east-1 = "us-east-1"
  }
}
