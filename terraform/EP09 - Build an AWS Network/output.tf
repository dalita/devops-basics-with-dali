# OUTPUT VALUES - Display important information after Terraform finishes applying changes
# These are useful for getting the IDs and IPs of created resources

# The ID of each created EC2 instance
output "instance_ids" {
  description = "IDs of the EC2 instances"
  # value       = aws_instance.ubuntu_server[*].id
  value = {
    for name, instance in aws_instance.linux_server :
    name => instance.id
  }

}

# Private IP addresses of the instances (used for internal communication)
output "instance_private_ips" {
  description = "Private IP addresses of the EC2 instances"
  # value       = aws_instance.ubuntu_server[*].private_ip
  value = {
    for name, instance in aws_instance.linux_server :
    name => instance.private_ip
  }
}

# The AMI ID used for instances (useful for documentation and verification)
output "amazon_linux_ami_id" {
  description = "ID of the Amazon Linux AMI used"
  value       = data.aws_ami.amazon_linux.id
}

# The ID of the VPC (needed for reference in other infrastructure)
output "vpc_id" {
  description = "ID of the selected VPC"
  value       = aws_vpc.students_portal.id
}

# The CIDR block of the VPC (shows the IP range of your network)
output "vpc_cidr_block" {
  description = "CIDR block of the selected VPC"
  value       = aws_vpc.students_portal.cidr_block
}

# The security group ID (needed to reference this firewall in other resources)
output "security_group_id" {
  description = "ID of the created security group"
  value       = aws_security_group.web_sg.id
}
