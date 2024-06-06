output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.this.id
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.this.id
}

output "subnet_id" {
  description = "The ID of the Subnet"
  value       = aws_subnet.this.id
}

output "security_group_id" {
  description = "The ID of the Security Group"
  value       = aws_security_group.this.id
}

output "internet_gateway_id" {
  description = "The ID of the Internet Gateway"
  value       = aws_internet_gateway.this.id
}
