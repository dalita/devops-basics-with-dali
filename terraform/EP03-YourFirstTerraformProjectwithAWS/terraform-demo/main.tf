provider "aws" {
  region     = "us-east-1"
  access_key = "<access_key>"
  secret_key = "<secret_key>"
}

resource "aws_instance" "ubuntu_server" {
  ami           = "ami-0b6d9d3d33ba97d99"
  instance_type = "t3.micro"

  tags = {
    Name        = "terraform-demo2"
    Environment = "Demo"
    Project     = "Terraform for Beginners"
    ManagedBy   = "Terraform"
  }
}



