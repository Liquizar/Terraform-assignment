provider "aws" {
  region = var.aws_region
}

resource "aws_security_group" "amit_assign1_sg" {
  name_prefix = "amit-assign1-sg"

  dynamic "ingress" {
    for_each = var.allowed_ports
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.tags
}

resource "aws_instance" "amit_assign1_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  security_groups = [aws_security_group.amit_assign1_sg.name]

  tags = {
    Name = var.instance_name
  }
}
