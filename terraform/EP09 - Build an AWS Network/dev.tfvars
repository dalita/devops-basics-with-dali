aws_region    = "us-east-1"
access_key    = "<YOUR_ACCESS_KEY>"
secret_key    = "<YOUR_SECRET_KEY>"
instance_type = "t3.micro"
//instance_count = 2
vpc_cidr            = "10.0.0.0/16"
public_subnet_cidr  = "10.0.1.0/24"
private_subnet_cidr = "10.0.2.0/24"


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