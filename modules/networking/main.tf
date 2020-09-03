resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
  tags       = var.vpc_tags
}

resource "aws_default_network_acl" "vpc_default_network_acl" {
  default_network_acl_id = aws_vpc.vpc.default_network_acl_id

  ingress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = aws_vpc.vpc.cidr_block
    from_port  = 0
    to_port    = 0
  }

  egress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = var.vpc_default_network_acl_tags
}

resource "aws_internet_gateway" "default_route_table_internet_gateway" {
  vpc_id = aws_vpc.vpc.id

  tags = var.default_route_table_internet_gateway_tags
}

resource "aws_default_route_table" "vpc_default_route_table" {
  default_route_table_id = aws_vpc.vpc.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.default_route_table_internet_gateway.id
  }

  tags = var.vpc_default_route_table_tags
}

resource "aws_default_security_group" "vpc_default_security_group" {
  vpc_id = aws_vpc.vpc.id

  ingress {
    protocol  = -1
    self      = true
    from_port = 0
    to_port   = 0
  }

  egress {
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
    from_port   = 0
    to_port     = 0
  }

  tags = var.vpc_default_security_group_tags
}

resource "aws_subnet" "private_subnet_1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "us-east-1a"
  tags              = var.private_subnet_1_tags
}

resource "aws_subnet" "private_subnet_2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1b"
  tags              = var.private_subnet_2_tags
}