provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "terraform_modules_administrator"
}

module "networking" {
  source = "./modules/networking"
  vpc_tags = {
    "MadeBy"          = "terraform_modules_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "networking"
    "Project"         = "terraform_modules"
    "Name"            = "terraform_modules_vpc"
  }
  private_subnet_1_tags = {
    "MadeBy"          = "terraform_modules_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "networking"
    "Project"         = "terraform_modules"
    "Name"            = "terraform_modules_private_subnet_1"
  }
  private_subnet_2_tags = {
    "MadeBy"          = "terraform_modules_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "networking"
    "Project"         = "terraform_modules"
    "Name"            = "terraform_modules_private_subnet_2"
  }
  vpc_default_network_acl_tags = {
    "MadeBy"          = "terraform_modules_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "networking"
    "Project"         = "terraform_modules"
    "Name"            = "terraform_modules_default_network_acl"
  }
  vpc_default_route_table_tags = {
    "MadeBy"          = "terraform_modules_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "networking"
    "Project"         = "terraform_modules"
    "Name"            = "terraform_modules_default_route_table"
  }
  terraform_modules_vpc_internet_gateway_tags = {
    "MadeBy"          = "terraform_modules_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "networking"
    "Project"         = "terraform_modules"
    "Name"            = "terraform_modules_vpc_internet_gateway"
  }
  vpc_default_security_group_tags = {
    "MadeBy"          = "terraform_modules_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "networking"
    "Project"         = "terraform_modules"
    "Name"            = "terraform_modules_default_security_group"
  }
  public_subnet_1_route_table_tags = {
    "MadeBy"          = "terraform_modules_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "networking"
    "Project"         = "terraform_modules"
    "Name"            = "terraform_modules_public_subnet_1_route_table"
  }
  public_subnet_2_route_table_tags = {
    "MadeBy"          = "terraform_modules_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "networking"
    "Project"         = "terraform_modules"
    "Name"            = "terraform_modules_public_subnet_2_route_table"
  }
  public_subnet_1_tags = {
    "MadeBy"          = "terraform_modules_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "networking"
    "Project"         = "terraform_modules"
    "Name"            = "terraform_modules_public_subnet_1"
  }
  public_subnet_2_tags = {
    "MadeBy"          = "terraform_modules_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "networking"
    "Project"         = "terraform_modules"
    "Name"            = "terraform_modules_public_subnet_2"
  }
}

resource "aws_security_group" "ubuntu_instance_security_group" {
  name        = "ubuntu_instance_security_group"
  description = "Security group for the terraform_modules_ec2_ubuntu_instance"
  vpc_id      = module.networking.vpc_id

  tags = {
    "MadeBy"          = "terraform_modules_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "aws_security_group"
    "Project"         = "terraform_modules"
    "Name"            = "terraform_modules_ubuntu_instance_security_group"
  }

  ingress {
    protocol    = "tcp"
    from_port   = 22
    to_port     = 22
    cidr_blocks = ["0.0.0.0/0"]
    description = "Security Group Rule to enable SSH connection with a EC2 instance"
  }

  ingress {
    protocol    = "tcp"
    from_port   = 80
    to_port     = 80
    cidr_blocks = ["0.0.0.0/0"]
    description = "Security Group Rule to enable HTTP connection with a EC2 instance"
  }

  egress {
    protocol    = "-1"
    from_port   = 0
    to_port     = 0
    cidr_blocks = ["0.0.0.0/0"]
    description = "Security Group Rule to replicate the default AWS rule"
  }
}

data "aws_ami" "ubuntu_18_ami" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"] # Canonical
}

module "ec2_instance" {
  source                       = "./modules/ec2_instance"
  ec2_instance_ami_id          = data.aws_ami.ubuntu_18_ami.id
  ec2_instance_subnet_id       = module.networking.public_subnet_1_id
  ec2_instance_security_groups = [aws_security_group.ubuntu_instance_security_group.id]
  ec2_instance_tags = {
    "MadeBy"          = "terraform_modules_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "ec2_instance"
    "Project"         = "terraform_modules"
    "Name"            = "terraform_modules_ec2_ubuntu_instance"
  }
  ec2_instance_volume_tags = {
    "MadeBy"          = "terraform_modules_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "ebs_volumen"
    "Project"         = "terraform_modules"
    "Name"            = "terraform_modules_ec2_instance_ebs_volume"
  }
}