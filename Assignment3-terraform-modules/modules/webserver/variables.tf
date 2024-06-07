variable "ami_id" {
    description = "The AMI ID for the EC2 instance."
    type        = string
    default     = "ami-0f58b397bc5c1f2e8"
}

variable "instance_type" {
    description = "The instance type for the EC2 instance."
    type        = string
    default     = "t2.micro"
}

variable "subnet_id" {
    description = "The ID of the subnet to launch the instance in."
    type        = string
}

variable "key_name" {
    description = "The key pair name for SSH access."
    type        = string
}

variable "security_group_id" {
    description = "The security group ID to attach to the instance."
    type        = string
}
