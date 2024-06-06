provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias  = "us-east-2"
  region = "us-east-2"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.small"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

module "us_east_1_instance" {
  source                = "./resources"
  providers             = { aws = aws.us-east-1 }
  ami_id                = "ami-03025bb25a1de0fc2"  
  instance_type         = var.instance_type
  instance_name         = "accuknox-instance-us-east-1"
  vpc_cidr              = var.vpc_cidr
  subnet_cidr           = var.subnet_cidr
  availability_zone     = "us-east-1a"
  vpc_name              = "accuknox-vpc-us-east-1"
  subnet_name           = "accuknox-subnet-us-east-1"
  security_group_name   = "accuknox-sg-us-east-1"
  internet_gateway_name = "accuknox-igw-us-east-1"
}

module "us_east_2_instance" {
  source                = "./resources"
  providers             = { aws = aws.us-east-2 }
  ami_id                = "ami-02371361af091464a"  
  instance_type         = var.instance_type
  instance_name         = "accuknox-instance-us-east-2"
  vpc_cidr              = var.vpc_cidr
  subnet_cidr           = var.subnet_cidr
  availability_zone     = "us-east-2a"
  vpc_name              = "accuknox-vpc-us-east-2"
  subnet_name           = "accuknox-subnet-us-east-2"
  security_group_name   = "accuknox-sg-us-east-2"
  internet_gateway_name = "accuknox-igw-us-east-2"
}

output "instance_ids" {
  description = "The IDs of the EC2 instances"
  value = {
    "us-east-1" = module.us_east_1_instance.instance_id
    "us-east-2" = module.us_east_2_instance.instance_id
  }
}
