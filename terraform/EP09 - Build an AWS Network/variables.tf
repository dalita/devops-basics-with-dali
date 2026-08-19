# AWS Region where resources will be deployed
variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
}

# EC2 instance type (e.g., t2.micro, t3.small)
variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
}

# Name of the security group that controls inbound/outbound traffic
variable "security_group_name" {
  description = "The name of the security group"
  type        = string
}
variable "security_group_description" {
  description = "The description of the security group"
  type        = string
  default     = "Allow TLS inbound traffic and all outbound traffic"
}

variable "security_group_egress_cidr" {
  description = "The CIDR block for the security group egress rule"
  type        = string
}
variable "https_port" {
  description = "The port for HTTP traffic"
  type        = number
}
variable "access_key" {
  description = "The AWS access key"
  type        = string
  default     = ""
  sensitive   = true
}
variable "secret_key" {
  description = "The AWS secret key"
  type        = string
  default     = ""
  sensitive   = true
}

variable "managed_by" {
  description = "The entity managing the resources"
  type        = string
  default     = "Terraform"
}
variable "project" {
  description = "The project name for the resources"
  type        = string
  default     = "Terraform for Beginners"
}
variable "environment" {
  description = "The environment for the resources"
  type        = string
  default     = "Demo"
}
variable "instance_name" {
  description = "The name of the EC2 instance"
  type        = string
  default     = "terraform-demo2"
}

variable "project_name" {
  description = "Name of the project"
  type        = string
}

variable "instance_count" {
  description = "The number of EC2 instances to create"
  type        = number
  default     = 2
}

variable "instances" {
  description = "Ec2 instances to create"
  type = map(object({
    instance_type = string
  }))
}

variable "import_demo_ami" {
  description = "AMI ID for the import demo instance (default preserves current AMI)"
  type        = string
  default     = "ami-0b6d9d3d33ba97d99"
}

variable "import_demo_instance_type" {
  description = "Instance type for the import demo instance"
  type        = string
  default     = "t3.micro"
}

variable "import_demo_name" {
  description = "Name tag for the import demo instance"
  type        = string
  default     = "terraform-import-demo"
}

variable "import_demo_sg_ids" {
  description = "Optional override for VPC security group IDs; if empty, uses aws_security_group.web_sg.id"
  type        = list(string)
  default     = []
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string

}

variable "public_subnet_cidr" {
  description = "The CIDR block for the subnet"
  type        = string
}

variable "private_subnet_cidr" {
  description = "The CIDR block for the subnet"
  type        = string
}
