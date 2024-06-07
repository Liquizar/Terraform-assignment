variable "aws_region" {
  description = "The AWS region to deploy in"
  type        = string
  default     = "ap-south-1"
}

variable "ami_id" {
  description = "The AMI ID for the instance"
  type        = string
  default     = "ami-0f58b397bc5c1f2e8"
}

variable "instance_type" {
  description = "The type of instance to use"
  type        = string
  default     = "t2.micro"
}

variable "instance_name" {
  description = "The name of the instance"
  type        = string
  default     = "amit-assign1-ec2"
}

variable "allowed_ports" {
  description = "List of allowed ports for security group"
  type        = list(number)
  default     = [22, 80]
}

variable "tags" {
  description = "Tags to apply to the instance"
  type        = map(string)
  default     = {
    Project     = "TerraformAssign1"
  }
}

variable "create_instance" {
  description = "Flag to create instance"
  type        = bool
  default     = true
}
