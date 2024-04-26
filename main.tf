#Blue

resource "aws_lb" "blue_lb_Lab3" {
  name               = "blue_lb_Lab3"
  load_balancer_type = "application"
  subnets            = [aws_subnet.SN-blue-1.id, aws_subnet.SN-blue-2.id, aws_subnet.SN-blue-3.id]
  security_groups    = [module.sg.SG-blue_id_Lab3]
}

resource "aws_lb_target_group" "blue_lb_asgTarget_Lab3" {
  name     = "blue_lb_asgTarget_Lab3"
  port     = 80
  protocol = "HTTP"
  vpc_id = module.vpc.VPC-blue_id_Lab3

  health_check {
    path                = "/"
    protocol            = "HTTP"
    matcher             = "200"
    interval            = 15
    timeout             = 3
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }
}

resource "aws_lb_listener" "blue_lb_http_Lab3" {
  load_balancer_arn = aws_lb.blue_lb_Lab3.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.blue_lb_asgTarget_Lab3.arn
  }
}


#Green
resource "aws_lb" "green_lb_Lab3" {
  name               = "green_lb_Lab3"
  load_balancer_type = "application"
  subnets            = [aws_subnet.SN-green-1.id, aws_subnet.SN-green-2.id, aws_subnet.SN-green-3.id]
  security_groups    = [module.sg.SG-green_id_Lab3]
}

resource "aws_lb_target_group" "green_lb_asgTarget_Lab3" {
  name     = "green_lb_asgTarget_Lab3"
  port     = 80
  protocol = "HTTP"
  vpc_id = module.vpc.VPC-green_id_Lab3

  health_check {
    path                = "/"
    protocol            = "HTTP"
    matcher             = "200"
    interval            = 15
    timeout             = 3
    healthy_threshold   = 2
    unhealthy_threshold = 2
  }
}

resource "aws_lb_listener" "green_lb_http_Lab3" {
  load_balancer_arn = aws_lb.green_lb_Lab3.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    type = "forward"
    target_group_arn = aws_lb_target_group.green_lb_asgTarget_Lab3.arn
  }
}