# PUBLIC SUBNET
# Resources in this subnet can be accessed from the internet
# Instances here get public IP addresses automatically (map_public_ip_on_launch = true)
# This is where you'd typically place load balancers and web servers
resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.students_portal.id
  cidr_block              = var.public_subnet_cidr
  map_public_ip_on_launch = true # Automatically assign public IPs to instances
  availability_zone       = data.aws_availability_zones.available.names[0]

  tags = merge(
    local.common_tags, {
      Name = "students-portal-public-subnet"
    }
  )
}

# PRIVATE SUBNET
# Resources in this subnet CANNOT be accessed directly from the internet
# Instances don't get public IPs (map_public_ip_on_launch = false)
# This is where you'd place databases and backend services for security
# They can still communicate outbound through the NAT Gateway
resource "aws_subnet" "private" {
  vpc_id                  = aws_vpc.students_portal.id
  cidr_block              = var.private_subnet_cidr
  map_public_ip_on_launch = false
  availability_zone       = data.aws_availability_zones.available.names[1]


  tags = merge(
    local.common_tags, {
      Name = "students-portal-private-subnet"
    }
  )
}



# Connect the public subnet to the public route table
# This route table contains routes that direct traffic to the Internet Gateway
resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}

# Connect the private subnet to the private route table
# This route table contains routes that direct outbound traffic through the NAT Gateway
resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private.id
}
