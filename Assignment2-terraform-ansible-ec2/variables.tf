variable "region" {
  description = "The AWS region to deploy in"
  type        = string
  default     = "ap-south-1"
}

variable "key_name" {
  description = "The name of the key pair"
  type        = string
  default     = "deployer-key"
}

variable "public_key_path" {
  description = "Path to the public key file"
  type        = string
  default     = "~/.ssh/id_rsa.pub"
}

variable "private_key_path" {
  description = "Path to the private key file"
  type        = string
  default     = "~/.ssh/id_rsa"
}

variable "ami" {
  description = "AMI ID for the Ubuntu instance"
  type        = string
  default     = "ami-0f58b397bc5c1f2e8"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "playbook_source" {
  description = "Path to the Ansible playbook"
  type        = string
  default     = "playbook.yml"
}
