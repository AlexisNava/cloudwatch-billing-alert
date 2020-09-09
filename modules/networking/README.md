# networking

**networking** is a Terraform module that creates networking base components 

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
| vpc_tags | Tags for the VPC | map(string) | -       | :heavy_check_mark: |
| private_subnet_1_tags | Tags for the private_subnet_1 | map(string) | -       | :heavy_check_mark: |
| private_subnet_2_tags | Tags for the private_subnet_2 | map(string) | -       | :heavy_check_mark: |
| vpc_default_network_acl_tags | Tags for the vpc_default_network_acl | map(string) | -       | :heavy_check_mark: |
| vpc_default_route_table_tags | Tags for the vpc_default_route_table | map(string) | -       | :heavy_check_mark: |
| default_route_table_internet_gateway_tags | Tags for the default_route_table_internet_gateway | map(string) | -       | :heavy_check_mark: |
| vpc_default_security_group_tags | Tags for the vpc_default_security_group | map(string) | -       | :heavy_check_mark: |
| public_subnet_1_route_table_tags | Tags for the public_subnet_1_route_table | map(string) | -       | :heavy_check_mark: |
| public_subnet_2_route_table_tags | Tags for the public_subnet_2_route_table | map(string) | -       | :heavy_check_mark: |
| public_subnet_1_tags | Tags for the public_subnet_1 | map(string) | -       | :heavy_check_mark: |
| public_subnet_2_tags | Tags for the public_subnet_2 | map(string) | -       | :heavy_check_mark: |

## Outputs

| Name                            | Description           |
| :---:                           | :---:                 |
| vpc_id     | Id of the vpc   |
| private_subnet_1_id     | Id of the private_subnet_1   |
| private_subnet_2_id     | Id of the private_subnet_2   |
| public_subnet_1_id     | Id of the public_subnet_1_id   |
| public_subnet_2_id     | Id of the public_subnet_2_id   |

## License

**networking** is licensed under [Apache License, Version 2.0](https://github.com/AlexisNava/terraform_modules/blob/master/LICENSE).