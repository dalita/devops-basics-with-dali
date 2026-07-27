output "instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.ubuntu_server.id
}

output "instance_ip" {
  description = "Private IP address of the EC2 instance"
  value       = aws_instance.ubuntu_server.private_ip
}


