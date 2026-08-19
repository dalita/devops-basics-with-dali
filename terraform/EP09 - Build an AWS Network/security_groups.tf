# SECURITY GROUP - Acts like a firewall at the instance level
# It controls which inbound and outbound traffic is allowed
resource "aws_security_group" "web" {
  name        = "students-portal-web-sg"
  description = "Allow HTTP, HTTPS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.students_portal.id

  tags = merge(
    local.common_tags, {
      Name = "students-portal-web-sg"
    }
  )
}

# INBOUND RULE - Allow HTTP traffic from anywhere
resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  security_group_id = aws_security_group.web.id
  cidr_ipv4         = "0.0.0.0/0" # From any IP address
  from_port         = 80          # HTTP port
  ip_protocol       = "tcp"
  to_port           = 80
}

# INBOUND RULE - Allow HTTPS traffic from anywhere
resource "aws_vpc_security_group_ingress_rule" "allow_https" {
  security_group_id = aws_security_group.web.id
  cidr_ipv4         = "0.0.0.0/0" # From any IP address
  from_port         = 443         # HTTPS port
  ip_protocol       = "tcp"
  to_port           = 443
}

# OUTBOUND RULE - Allow all traffic to go out
# -1 means all protocols (TCP, UDP, ICMP, etc.)
resource "aws_vpc_security_group_egress_rule" "allow_all" {
  security_group_id = aws_security_group.web.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}
