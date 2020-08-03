# s3_versioned_bucket

**s3_versioned_bucket** is a Terraform module that creates an S3 bucket versioned

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
| bucket_name | The name of the versioned bucket | string | -       | :heavy_check_mark: |

## Outputs

| Name                            | Description           |
| :---:                           | :---:                 |
| bucket_id     | ID of the versioned_s3_bucket   |
| bucket_arn     | ARN of the versioned_s3_bucket   |
| bucket_domain_name     | Bucket Domain Name of the versioned_s3_bucket   |

## License

**s3_versioned_bucket** is licensed under [Apache License, Version 2.0](https://github.com/AlexisNava/terraform_modules/blob/master/LICENSE).