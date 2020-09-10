# ec2_instance

**ec2_instance** is a Terraform module that creates an Ubuntu EC2 instance

## Requirements

- [Terraform >= v0.12.28](https://www.terraform.io/downloads.html)

## Installation

### Initialize the project

```sh
terraform init
```

### Install the local modules

```sh
terraform get
```

## Inputs

| Name           | Description       | Type   | Default | Required |
| :---:          | :---:             | :---:  | :---:   | :---:    |
| ec2_instance_security_groups | List of the security groups for the ec2_instance | list(string) | -       | :heavy_check_mark: |
| ec2_instance_subnet_id | Subnet Id for the ec2_instance | string | -       | :heavy_check_mark: |
| ec2_instance_tags | Tags for ec2_instance | map(string) | -       | :heavy_check_mark: |
| ec2_instance_volume_tags | Tags for ec2_instance_volume_tags | map(string) | -       | :heavy_check_mark: |
| ec2_instance_ami_id | AMI Id for the ec2_instance | string | -       | :heavy_check_mark: |

## License

**ec2_instance** is licensed under [Apache License, Version 2.0](https://github.com/AlexisNava/terraform_modules/blob/master/LICENSE).