# DATA SOURCE - Query information from AWS (read-only, doesn't create resources)
# This fetches the default VPC in your AWS account
data "aws_vpc" "selected" {
  default = true
}

# DATA SOURCE - Find the latest Amazon Linux 2023 AMI (machine image)
# AMI = Amazon Machine Image - a pre-configured operating system template
# To use this for the import demo instance, set `ami = data.aws_ami.amazon_linux.id` in the
# `aws_instance.import_demo_instance` resource (replace the `var.import_demo_ami` reference).
# Find the most recent Amazon Linux 2023 AMI created by Amazon
data "aws_ami" "amazon_linux" {
  most_recent = true       # Get the latest version
  owners      = ["amazon"] # Only look at Amazon's official images

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

# Find the latest Ubuntu AMI from Canonical (the company that maintains Ubuntu)
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical's official account

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}

# DATA SOURCE - Get all available zones in the current region
# Availability Zones are physical data centers within a region
# Spreading resources across multiple zones provides high availability
data "aws_availability_zones" "available" {
  state = "available"
}
