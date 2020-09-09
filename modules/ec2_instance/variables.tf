variable "ubuntu_instance_security_groups" {
  description = "List of the security groups for the ubuntu_instance"
  type        = list(string)
}

variable "ubuntu_instance_subnet_id" {
  description = "Subnet Id for the ubuntu_instance"
  type        = string
}

variable "ubuntu_instance_tags" {
  description = "Tags for ubuntu_instance_tags"
  type        = map(string)
}