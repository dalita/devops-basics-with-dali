provider "aws" {
  region     = var.aws_region
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "ubuntu_server" {
  ami                    = data.aws_ami.amazon_linux.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name        = var.instance_name
    Environment = var.environment
    Project     = var.project_name
    ManagedBy   = var.managed_by
  }
}

# Security group
resource "aws_security_group" "web_sg" {
  name        = var.security_group_name
  description = var.security_group_description
  vpc_id      = data.aws_vpc.selected.id

  tags = {
    Name        = var.security_group_name
    Environment = var.environment
    ManagedBy   = var.managed_by
  }
}

# Permitir HTTPS desde el VPC
resource "aws_vpc_security_group_ingress_rule" "allow_tls_https" {
  security_group_id = aws_security_group.web_sg.id
  cidr_ipv4         = data.aws_vpc.selected.cidr_block
  from_port         = var.https_port
  to_port           = var.https_port
  ip_protocol       = "tcp"
}

# Permitir todo el tráfico saliente
resource "aws_vpc_security_group_egress_rule" "allow_all_outbound" {
  security_group_id = aws_security_group.web_sg.id
  cidr_ipv4         = var.security_group_egress_cidr
  ip_protocol       = "-1"
}