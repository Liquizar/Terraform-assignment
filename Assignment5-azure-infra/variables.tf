variable "resource_group_name" {
    description = "The name of the resource group"
    type        = string
}

variable "location" {
    description = "The location of the resources"
    type        = string
    default     = "Central India"
}

variable "prefix" {
    description = "The prefix for all resources"
    type        = string
}

variable "subnet_id" {
    description = "The ID of the subnet"
    type        = string
}

variable "vm_size" {
    description = "The size of the virtual machine"
    type        = string
    default     = "Standard_DS1_v2"
}

variable "admin_username" {
    description = "The admin username for the VM"
    type        = string
}

variable "admin_password" {
    description = "The admin password for the VM"
    type        = string
}

variable "log_analytics_workspace_id" {
    description = "The ID of the Log Analytics workspace"
    type        = string
}
