provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "ubuntu_server" {
  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name        = "terraform-demo2"
    Environment = "Demo"
    Project     = "Terraform for Beginners"
    ManagedBy   = "Terraform"
  }
}


##security_group

resource "aws_security_group" "web_sg" {
  name        = "terraform-web-sg"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = "vpc-07212559bf5f90cd6"

  tags = {
    Name        = "terraform-web-sg"
    Environment = "Demo"
    ManagedBy   = "Terraform"
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_https" {
  security_group_id = aws_security_group.web_sg.id
  cidr_ipv4         = "172.31.0.0/16"
  from_port         = 443
  ip_protocol       = "tcp"
  to_port           = 443
}



resource "aws_vpc_security_group_egress_rule" "allow_all_outbound" {
  security_group_id = aws_security_group.web_sg.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1" # semantically equivalent to all ports
}

##depends_on example

# resource "aws_s3_bucket" "demo" {
#   bucket_prefix = "depends-on-demo-"
# }

# resource "aws_ssm_parameter" "ready" {
#   name  = "/demo/bucket-ready"
#   type  = "String"
#   value = "true"

#   depends_on = [aws_s3_bucket.demo]
# }
