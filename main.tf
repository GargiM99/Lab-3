#SG for Blue

resource "aws_security_group" "Lab3_BlueSG" {
  name        = "Lab3_BlueSG"
  vpc_id      = var.VPC-blue_id_Lab3
  description = "Security Group that is applied to Blue VPC, allows HTTP & SSH inbound traffic"

  #Inbound Rules
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #Outbound Rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}




#SG for Green

resource "aws_security_group" "Lab3_GreenSG" {
  name        = "Lab3_GreenSG"
  vpc_id      = var.VPC-green_id_Lab3
  description = "Security Group that is applied to Green VPC, allows HTTP & SSH inbound traffic"

  #Inbound Rules
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  #Outbound Rules
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}