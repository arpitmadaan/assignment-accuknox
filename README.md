# Terraform Project: accuknox-tf

This Terraform project contains infrastructure configuration for deploying resources on AWS using Terraform.
It was advised to use localstack but it seems I cannot create vpc resource there!

## Overview

This project aims to deploy EC2 instances in two different AWS regions (us-east-1 and us-east-2) using the same Terraform codebase. 

- EC2 instances
- VPC, Subnet, Security Group, Internet Gateway and route table
- `.gitignore` file to ignore Terraform state file and lock file 


## Directory Structure

terraform_project/
├── resources/
│ ├── main.tf
│ ├── outputs.tf
│ └── variables.tf
├── main.tf