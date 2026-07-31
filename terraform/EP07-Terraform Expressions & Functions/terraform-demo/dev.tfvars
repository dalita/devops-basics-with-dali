aws_region     = "us-east-1"
access_key     = "your-access-key"
secret_key     = "your-secret-key"
instance_type  = "t3.micro"
//instance_count = 2

instances = {
  web = {
    instance_type = "t3.micro"
  }
  api = {
    instance_type = "t3.micro"
  }
}

security_group_name        = "terraform-web-sg-dev"
security_group_description = "Allow TLS inbound traffic and all outbound traffic"
security_group_egress_cidr = "0.0.0.0/0"

https_port = 443

instance_name = "terraform-demo"
environment   = "Development"
project_name  = "Terraform for Beginners"
managed_by    = "Terraform"