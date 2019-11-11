data "aws_ecs_task_definition" "fizzbuzz" {
  task_definition = "${aws_ecs_task_definition.fizzbuzz.family}"
}

resource "aws_ecs_task_definition" "fizzbuzz" {
  family = "fizzbuzz_codeChallenge"

  container_definitions = <<DEFINITION
[
  {
    "name": "wordpress",
    "image": "avinash514/fizzbuzz:latest",
    "essential": true,
    "portMappings": [
      {
        "containerPort": 80,
        "hostPort": 80
      }
    ],
    "memory": 500,
    "cpu": 10
  }
]
DEFINITION
}
