provider "azurerm" {
    features {}
}

module "resource_group" {
    source = "./modules/resource_group"
    name   = var.resource_group_name
    location = var.location
}

module "public_ip" {
    source = "./modules/ip_address"
    name   = "${var.prefix}-public-ip"
    location = module.resource_group.resource_group_location
    resource_group_name = module.resource_group.resource_group_name
}

module "nsg" {
    source = "./modules/nsg"
    name   = "${var.prefix}-nsg"
    location = module.resource_group.resource_group_location
    resource_group_name = module.resource_group.resource_group_name
}

module "nic" {
    source = "./modules/nic"
    name   = "${var.prefix}-nic"
    location = module.resource_group.resource_group_location
    resource_group_name = module.resource_group.resource_group_name
    subnet_id = var.subnet_id
    public_ip_address_id = module.public_ip.public_ip_id
}

module "virtual_machine" {
    source = "./modules/virtual_machine"
    name   = "${var.prefix}-vm"
    location = module.resource_group.resource_group_location
    resource_group_name = module.resource_group.resource_group_name
    network_interface_id = module.nic.nic_id
    vm_size = var.vm_size
    admin_username = var.admin_username
    admin_password = var.admin_password
}

module "diagnostics" {
    source = "./modules/diagnostics"
    name   = "${var.prefix}-diagnostics"
    target_resource_id = module.virtual_machine.virtual_machine_id
    log_analytics_workspace_id = var.log_analytics_workspace_id
}
