# This terraform code provides a complete automation of infrastructure provisoning and running services on ECS cluster with autoscalling
group and loadbalancer as explained below

#### IAM roles are required for the ECS container agent and ECS service scheduler. We also create an instance profile to pass the role information to the EC2 instances when they are launched.
- ecs-service-role.tf
- ecs-instance-role.tf

#### To Create required VPC
- vpc.tf

#### ALB to load balance traffic across all our instances.
- application-load-balancer.tf

#### Autoscaling group and launch configuration
- launch-configuration.tf
- autoscaling-group.tf

#### To Create the ECS Cluster
- cluster.tf

#### A task definition defines the containers that run on the ECS cluster.
- task-definition.tf

#### To Create the Service
-service.tf

#### Specify the values for the variables in a terraform.tfvars file as below if required else can pass at runtime
- terraform.tfvars
``` bash
ecs_key_pair_name="$ECS_KEY_PAIR_NAME"
aws_access_key_id = "$PECT_AWS_KEYS_INTEGRATION_ACCESSKEY"
aws_secret_access_key = "$PECT_AWS_KEYS_INTEGRATION_SECRETKEY"
```
#### Run Your Script & Requirements
``` bash
$ git clone <this repo> --> requires GIT
$ cd fizzbuzz_codeChallenge
$ terraform init --> requires terraform
$ terraform plan --> requires terraform and aws credentials (if not specified or used in .tfvars)
$ terraform apply --> requires terraform and aws credentials (if not specified or used in .tfvars)
$ terraform destroy --> to remove or destroy the plan we have created in aws with terraform apply
```
