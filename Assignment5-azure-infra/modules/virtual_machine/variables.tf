variable "name" {
    description = "The name of the virtual machine"
    type        = string
}

variable "location" {
    description = "The location of the virtual machine"
    type        = string
    default     = "Central India"
}

variable "resource_group_name" {
    description = "The name of the resource group"
    type        = string
}

variable "network_interface_id" {
    description = "The ID of the network interface"
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
