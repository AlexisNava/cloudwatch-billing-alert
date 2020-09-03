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
  default_route_table_internet_gateway_tags = {
    "MadeBy"          = "terraform_modules_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "networking"
    "Project"         = "terraform_modules"
    "Name"            = "terraform_modules_default_route_table_internet_gateway"
  }
  vpc_default_security_group_tags = {
    "MadeBy"          = "terraform_modules_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "networking"
    "Project"         = "terraform_modules"
    "Name"            = "terraform_modules_default_security_group"
  }
}