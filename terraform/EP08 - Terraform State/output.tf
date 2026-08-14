output "instance_ids" {
  description = "IDs of the EC2 instances"
  # value       = aws_instance.ubuntu_server[*].id
  value = {
    for name, instance in aws_instance.linux_server :
    name => instance.id
  }
  
}

output "instance_private_ips" {
  description = "Private IP addresses of the EC2 instances"
  # value       = aws_instance.ubuntu_server[*].private_ip
  value = {
    for name, instance in aws_instance.linux_server :
    name => instance.private_ip
  }
}

output "amazon_linux_ami_id" {
  description = "ID of the Amazon Linux AMI used"
  value       = data.aws_ami.amazon_linux.id
}

output "vpc_id" {
  description = "ID of the selected VPC"
  value       = data.aws_vpc.selected.id
}

output "vpc_cidr_block" {
  description = "CIDR block of the selected VPC"
  value       = data.aws_vpc.selected.cidr_block
}

output "security_group_id" {
  description = "ID of the created security group"
  value       = aws_security_group.web_sg.id
}