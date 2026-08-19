# VPC (Virtual Private Cloud) - This is the foundation of your network infrastructure
# It provides an isolated network environment where all other resources will be deployed
resource "aws_vpc" "students_portal" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "students-portal-vpc"
  }
}