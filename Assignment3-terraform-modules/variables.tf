variable "region" {
    description = "The AWS region to create resources in."
    type        = string
    default     = "ap-south-1"
}

variable "key_name" {
    description = "The key pair name for SSH access."
    type        = string
}