aws_region = "us-east-1"

access_key   = ""
secret_key   = "<YOUR_SECRET_KEY>"

ami_id        = "ami-0b6d9d3d33ba97d99"
instance_type = "t3.micro"

vpc_id = "vpc-07212559bf5f90cd6"

security_group_name        = "terraform-web-sg-dev"
security_group_description = "Allow TLS inbound traffic and all outbound traffic"
security_group_cidr        = "172.31.0.0/16"
security_group_egress_cidr = "0.0.0.0/0"

https_port = 443

instance_name = "terraform-demo-dev"
environment   = "Development"
project_name  = "Terraform for Beginners"
managed_by    = "Terraform"