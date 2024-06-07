provider "aws" {
  region = var.region
}

resource "aws_key_pair" "deployer" {
  key_name   = var.key_name
  public_key = file(var.public_key_path)
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "nsg-inbound"
  }
}

resource "aws_instance" "ubuntu" {
  ami           = var.ami
  instance_type = var.instance_type
  key_name      = aws_key_pair.deployer.key_name

  security_groups = [
    aws_security_group.allow_ssh.name,
  ]

  tags = {
    Name = "Ubuntu-Ansible"
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file(var.private_key_path)
    host        = self.public_ip
  }

  provisioner "file" {
    source      = var.playbook_source
    destination = "/home/ubuntu/playbook.yml"
  }

  provisioner "remote-exec" {
    inline = [
        "sudo apt update",
        "sudo apt install software-properties-common",
        "sudo add-apt-repository --yes --update ppa:ansible/ansible",
        "sudo apt install -y ansible"
    ]
  }

  provisioner "remote-exec" {
    inline = [
      "ansible-playbook /home/ubuntu/playbook.yml"
    ]
  }
}
