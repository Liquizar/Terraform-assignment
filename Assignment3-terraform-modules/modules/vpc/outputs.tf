output "vpc_id" {
    description = "The ID of the VPC."
    value       = aws_vpc.amit_assign3_vpc.id
}

output "subnet_ids" {
    description = "The IDs of the subnets."
    value       = aws_subnet.amit_assign3_subnet[*].id
}
