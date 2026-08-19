# PROVIDER - Tells Terraform how to connect to AWS
# This is where you specify your AWS credentials and region
provider "aws" {
  region     = var.aws_region
  access_key = var.access_key
  secret_key = var.secret_key
}

# EC2 INSTANCES - Virtual machines that will run your applications
# Using a for_each loop to create multiple instances from the "instances" variable
resource "aws_instance" "linux_server" {
  for_each      = var.instances
  ami           = data.aws_ami.amazon_linux.id
  instance_type = each.value.instance_type

  # monitoring = var.environment == "Development" ? true : false
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = merge(
    local.common_tags, {
      Name = "${var.instance_name}-${var.environment}-${each.key}"
    }
  )
}

# Example EC2 instance using Ubuntu with an imported configuration
resource "aws_instance" "import_demo_instance" {
  ami           = data.aws_ami.ubuntu.id # Use the latest Ubuntu AMI
  instance_type = var.import_demo_instance_type

  vpc_security_group_ids = local.import_demo_sg_ids # Apply security group rules

  tags = local.import_demo_tags
}



# SECURITY GROUP - Firewall rules for EC2 instances
# Controls what traffic can enter and leave instances
resource "aws_security_group" "web_sg" {
  name        = var.security_group_name
  description = var.security_group_description
  vpc_id      = data.aws_vpc.selected.id # Attach to the VPC

  tags = merge(
    local.common_tags, {
      Name = var.security_group_name
    }
  )

}

# INBOUND RULE - Allow HTTPS traffic from within the VPC
resource "aws_vpc_security_group_ingress_rule" "allow_tls_https" {
  security_group_id = aws_security_group.web_sg.id
  cidr_ipv4         = data.aws_vpc.selected.cidr_block # Only from VPC CIDR range
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
