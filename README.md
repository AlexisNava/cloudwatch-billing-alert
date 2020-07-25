# Terraform Modules

This project is a collection of personal Terrafom Modules

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

## Module Documentation

- [billing_cloudwatch_alarm](./modules/billing_cloudwatch_alarm/README.md)

## Inputs

| Name           | Description       | Type   | Default | Required |
| :---:          | :---:             | :---:  | :---:   | :---:    |
| aws_access_key | AWS Access Key ID | string | -       | :heavy_check_mark: |
| aws_secret_key | AWS Secret Access Key | string | -       | :heavy_check_mark: |
| sms_enpoint | Phone number to subscribe to the SMS alert | string | -       | :heavy_check_mark: |

## License

**terraform_modules** is licensed under [Apache License, Version 2.0](./LICENSE).