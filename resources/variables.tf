variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "instance_name" {
  description = "Name tag for the instance"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  type        = string
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
}

variable "subnet_name" {
  description = "Name tag for the subnet"
  type        = string
}

variable "security_group_name" {
  description = "Name tag for the security group"
  type        = string
}

variable "internet_gateway_name" {
  description = "Name tag for the internet gateway"
  type        = string
}
