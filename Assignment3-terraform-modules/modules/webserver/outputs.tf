output "instance_id" {
    description = "The ID of the EC2 instance."
    value       = aws_instance.amit_assign3_web.id
}

output "public_ip" {
    description = "The public IP of the EC2 instance."
    value       = aws_instance.amit_assign3_web.public_ip
}
