# Terraform Modules

This project is a collection of my personal Terraform Modules

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
- [s3_versioned_bucket](./modules/s3_versioned_bucket/README.md)

## Inputs

| Name           | Description       | Type   | Default | Required |
| :---:          | :---:             | :---:  | :---:   | :---:    |
| sms_enpoint | Phone number to subscribe to the SMS alert | string | -       | :heavy_check_mark: |

## Outputs

| Name                            | Description           |
| :---:                           | :---:                 |
| terraform_state_of_terraform_modules_project_id     | ID of the S3 versioned bucket called terraform_state_of_terraform_modules_project   |
| terraform_state_of_terraform_modules_project_arn     | ARN of the S3 versioned bucket called terraform_state_of_terraform_modules_project   |
| terraform_state_of_terraform_modules_project_bucket_domain_name     | Bucket Domain Name of the S3 versioned bucket called the terraform_state_of_terraform_modules_project   |

## License

**terraform_modules** is licensed under [Apache License, Version 2.0](./LICENSE).