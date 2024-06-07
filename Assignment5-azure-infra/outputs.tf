output "resource_group_name" {
    value = module.resource_group.resource_group_name
}

output "public_ip_address" {
    value = module.public_ip.public_ip_address
}

output "virtual_machine_name" {
    value = module.virtual_machine.virtual_machine_name
}

output "diagnostic_id" {
    value = module.diagnostics.diagnostic_id
}
