# Elastic IP (EIP) - A static public IP address for the NAT Gateway
# This IP remains the same even if the NAT Gateway is stopped and started
resource "aws_eip" "nat" {
  domain = "vpc"

  tags = merge(
    local.common_tags, {
      Name = "students-portal-nat-eip"
    }
  )
}

# NAT Gateway (Network Address Translation)
# This allows instances in PRIVATE subnets to communicate with the internet
# Traffic from private instances appears to come from this NAT Gateway's public IP
# This provides security since private instances can't receive inbound connections from the internet
resource "aws_nat_gateway" "main" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public.id

  tags = merge(
    local.common_tags, {
      Name = "students-portal-nat-gateway"
    }
  )
  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.students_portal]
}
