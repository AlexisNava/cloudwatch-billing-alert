variable "ec2_instance_security_groups" {
  description = "List of the security groups for the ec2_instance"
  type        = list(string)
}

variable "ec2_instance_subnet_id" {
  description = "Subnet Id for the ec2_instance"
  type        = string
}

variable "ec2_instance_tags" {
  description = "Tags for ec2_instance"
  type        = map(string)
}

variable "ec2_instance_volume_tags" {
  description = "Tags for ec2_instance_volume_tags"
  type        = map(string)
}

variable "ec2_instance_ami_id" {
  description = "AMI Id for the ec2_instance"
  type        = string
}