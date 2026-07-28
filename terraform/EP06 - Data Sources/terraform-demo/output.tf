output "instance_id" {
  description = "ID de la instancia EC2"
  value       = aws_instance.ubuntu_server.id
}

output "instance_ip" {
  description = "Dirección IP privada de la instancia EC2"
  value       = aws_instance.ubuntu_server.private_ip
}

output "amazon_linux_ami_id" {
  description = "ID de la AMI de Amazon Linux utilizada"
  value       = data.aws_ami.amazon_linux.id
}

output "vpc_id" {
  description = "ID del VPC seleccionado"
  value       = data.aws_vpc.selected.id
}

output "vpc_cidr_block" {
  description = "Bloque CIDR del VPC seleccionado"
  value       = data.aws_vpc.selected.cidr_block
}

output "security_group_id" {
  description = "ID del security group creado"
  value       = aws_security_group.web_sg.id
}