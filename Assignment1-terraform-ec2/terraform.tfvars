aws_region     = "ap-south-1"
ami_id         = "ami-0f58b397bc5c1f2e8"
instance_type  = "t2.micro"
instance_name  = "amit-assign1-ec2"
allowed_ports  = [22, 80]
create_instance = true
tags = {
  Project     = "TerraformAssign1"
}
