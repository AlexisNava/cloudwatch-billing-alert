output "vpc_id" {
  description = "Id of the vpc"
  value       = aws_vpc.vpc.id
}

output "private_subnet_1_id" {
  description = "Id of the private_subnet_1"
  value       = aws_subnet.private_subnet_1.id
}

output "private_subnet_2_id" {
  description = "Id of the private_subnet_2"
  value       = aws_subnet.private_subnet_2.id
}

output "public_subnet_1_id" {
  description = "Id of the public_subnet_1_id"
  value       = aws_subnet.public_subnet_1.id
}

output "public_subnet_2_id" {
  description = "Id of the public_subnet_2_id"
  value       = aws_subnet.public_subnet_2.id
}