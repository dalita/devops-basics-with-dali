variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
}
variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  type        = string
}
variable "vpc_id" {
  description = "The VPC ID where the security group will be created"
  type        = string
}
variable "instance_type" {
  description = "The instance type for the EC2 instance"
  type        = string
}
variable "security_group_name" {
  description = "The name of the security group"
  type        = string
}
variable "security_group_description" {
  description = "The description of the security group"
  type        = string
  default     = "Allow TLS inbound traffic and all outbound traffic"
}   
variable "security_group_cidr" {
  description = "The CIDR block for the security group ingress rule"
  type        = string
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
