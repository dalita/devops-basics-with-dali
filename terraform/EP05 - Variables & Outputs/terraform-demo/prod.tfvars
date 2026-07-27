# Production values

aws_region = "us-east-1"

ami_id        = "<PRODUCTION_AMI_ID>"
instance_type = "<PRODUCTION_INSTANCE_TYPE>"

vpc_id = "<PRODUCTION_VPC_ID>"

security_group_name        = "terraform-web-sg-prod"
security_group_description = "Allow TLS inbound traffic and all outbound traffic"
security_group_cidr        = "<PRODUCTION_CIDR>"
security_group_egress_cidr = "0.0.0.0/0"

https_port = 443

instance_name = "terraform-demo-prod"
environment   = "Production"
project_name  = "Terraform for Beginners"
managed_by    = "Terraform"