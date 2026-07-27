provider "aws" {
  region = var.aws_region

  # Optional: only for learning purposes.
  # In real projects, use `aws configure` or an IAM Role instead.
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "ubuntu_server" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name        = var.instance_name
    Environment = var.environment
    Project     = var.project_name
    ManagedBy   = var.managed_by
  }
}


##security_group

resource "aws_security_group" "web_sg" {
  name        = var.security_group_name
  description = var.security_group_description
  vpc_id      = var.vpc_id

  tags = {
    Name        = var.security_group_name
    Environment = var.environment
    ManagedBy   = var.managed_by
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_https" {
  security_group_id = aws_security_group.web_sg.id
  cidr_ipv4         = var.security_group_cidr
  from_port         = var.https_port
  ip_protocol       = "tcp"
  to_port           = 443
}



resource "aws_vpc_security_group_egress_rule" "allow_all_outbound" {
  security_group_id = aws_security_group.web_sg.id
  cidr_ipv4         = var.security_group_egress_cidr
  ip_protocol       = "-1" # semantically equivalent to all ports
}
