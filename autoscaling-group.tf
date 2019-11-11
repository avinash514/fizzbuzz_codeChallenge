resource "aws_autoscaling_group" "ecs-autoscaling-group" {
  name                 = "ecs-autoscaling-group"
  max_size             = 4
  min_size             = 2
  desired_capacity     = 2
  vpc_zone_identifier  = ["${aws_subnet.test_public_sn_01.id}", "${aws_subnet.test_public_sn_02.id}"]
  launch_configuration = "${aws_launch_configuration.ecs-launch-configuration.name}"
  health_check_type    = "ELB"
}
