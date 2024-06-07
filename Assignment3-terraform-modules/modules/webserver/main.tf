resource "aws_instance" "amit_assign3_web" {
    ami           = var.ami_id
    instance_type = var.instance_type
    subnet_id     = var.subnet_id
    tags = {
        Name = "amit-assign3-web-server"
    }
    
    user_data = <<-EOF
                #!/bin/bash
                apt-get update
                apt-get install -y apache2
                systemctl start apache2
                systemctl enable apache2
                EOF
                
    key_name = var.key_name
    
    associate_public_ip_address = true
    
    security_groups = [var.security_group_id]
}
