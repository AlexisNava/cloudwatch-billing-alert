variable "vpc_tags" {
  description = "Tags for the VPC"
  type        = map(string)
}

variable "private_subnet_1_tags" {
  description = "Tags for the private_subnet_1"
  type        = map(string)
}

variable "private_subnet_2_tags" {
  description = "Tags for the private_subnet_2"
  type        = map(string)
}

variable "vpc_default_network_acl_tags" {
  description = "Tags for the vpc_default_network_acl"
  type        = map(string)
}

variable "vpc_default_route_table_tags" {
  description = "Tags for the vpc_default_route_table"
  type        = map(string)
}

variable "terraform_modules_vpc_internet_gateway_tags" {
  description = "Tags for the terraform_modules_vpc_internet_gateway"
  type        = map(string)
}

variable "vpc_default_security_group_tags" {
  description = "Tags for the vpc_default_security_group"
  type        = map(string)
}

variable "public_subnet_1_route_table_tags" {
  description = "Tags for the public_subnet_1_route_table"
  type        = map(string)
}

variable "public_subnet_2_route_table_tags" {
  description = "Tags for the public_subnet_2_route_table"
  type        = map(string)
}

variable "public_subnet_1_tags" {
  description = "Tags for the public_subnet_1"
  type        = map(string)
}

variable "public_subnet_2_tags" {
  description = "Tags for the public_subnet_2"
  type        = map(string)
}