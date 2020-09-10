resource "aws_instance" "ec2_instance" {
  instance_type               = "t2.micro"
  key_name                    = "terraform_modules_ec2_instance_instance_key_pair"
  associate_public_ip_address = true
  ami                         = var.ec2_instance_ami_id
  vpc_security_group_ids      = var.ec2_instance_security_groups
  subnet_id                   = var.ec2_instance_subnet_id
  tags                        = var.ec2_instance_tags
  volume_tags                 = var.ec2_instance_volume_tags
}