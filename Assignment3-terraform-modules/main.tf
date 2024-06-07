provider "aws" {
    region = var.region
}

resource "aws_security_group" "web_sg" {
    name        = "web-sg"
    vpc_id      = module.vpc.vpc_id
    description = "Allow HTTP and SSH traffic"

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "web-sg"
    }
}

module "vpc" {
    source       = "./modules/vpc"
    vpc_cidr     = "10.0.0.0/16"
    subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
}

module "webserver" {
    source            = "./modules/webserver"
    ami_id            = "ami-0f58b397bc5c1f2e8"
    instance_type     = "t2.micro"
    subnet_id         = element(module.vpc.subnet_ids, 0)
    key_name          = var.key_name
    security_group_id = aws_security_group.web_sg.id
}
