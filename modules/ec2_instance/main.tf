data "aws_ami" "ubuntu_ami" {
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

resource "aws_instance" "ubuntu_instance" {
  ami                         = data.aws_ami.ubuntu_ami.id
  instance_type               = "t2.micro"
  key_name                    = "terraform_modules_ec2_ubuntu_instance_key_pair"
  associate_public_ip_address = true
  vpc_security_group_ids      = var.ubuntu_instance_security_groups
  subnet_id                   = var.ubuntu_instance_subnet_id
  tags                        = var.ubuntu_instance_tags
}