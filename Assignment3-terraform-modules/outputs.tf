output "vpc_id" {
    description = "The ID of the VPC."
    value       = module.vpc.vpc_id
}

output "subnet_ids" {
    description = "The IDs of the subnets."
    value       = module.vpc.subnet_ids
}

output "web_instance_id" {
    description = "The ID of the web server instance."
    value       = module.webserver.instance_id
}

output "web_instance_public_ip" {
    description = "The public IP of the web server instance."
    value       = module.webserver.public_ip
}
