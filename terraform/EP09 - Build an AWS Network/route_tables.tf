# PUBLIC ROUTE TABLE
# This defines how traffic should be routed FROM the public subnet
# Rule: Any traffic going outside this subnet (0.0.0.0/0) goes through the Internet Gateway
# This allows instances in public subnet to reach the internet and be reached from the internet
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.students_portal.id

  # Route all outbound traffic to the Internet Gateway
  route {
    cidr_block = "0.0.0.0/0" # 0.0.0.0/0 means "any destination"
    gateway_id = aws_internet_gateway.students_portal.id
  }

  tags = merge(

    local.common_tags, {
      Name = "students-portal-public-rt"
    }
  )

}

# PRIVATE ROUTE TABLE
# This defines how traffic should be routed FROM the private subnet
# Rule: Any traffic going outside this subnet goes through the NAT Gateway
# This allows instances to reach the internet BUT prevents inbound connections from outside
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.students_portal.id

  # Route all outbound traffic to the NAT Gateway (for security and privacy)
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.main.id
  }

  tags = merge(

    local.common_tags, {
      Name = "students-portal-private-rt"
    }
  )

}
