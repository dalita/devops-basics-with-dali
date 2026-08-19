# Internet Gateway - This allows communication between your VPC and the internet
# Think of it as the "door" that opens your VPC to the outside world
# Resources with public IPs can communicate through this gateway
resource "aws_internet_gateway" "students_portal" {
  vpc_id = aws_vpc.students_portal.id

  tags = merge(
    local.common_tags, {
      Name = "students-portal-igw"
    }
  )
}
