region           = "ap-south-1"
key_name         = "deployer-key"
allowed_ports    = [22, 80]
public_key_path  = "~/.ssh/id_rsa.pub"
private_key_path = "~/.ssh/id_rsa"
ami              = "ami-0f58b397bc5c1f2e8"
instance_type    = "t2.micro"
playbook_source  = "playbook.yml"
