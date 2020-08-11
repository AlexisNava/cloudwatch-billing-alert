# replicated_s3_bucket

**replicated_s3_bucket** is a Terraform module that creates a replicated S3 bucket in the `us-east-1` and `us-west-1` AWS regions.

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
| versioned_s3_bucket_tags | Tags for the versioned_s3_bucket resource | map(string) | -       | :heavy_check_mark: |
| versioned_s3_bucket_lifecycle_rule_tags | Tags for the versioned_s3_bucket_lifecycle_rule resource | map(string) | -       | :heavy_check_mark: |

## Outputs

| Name                            | Description           |
| :---:                           | :---:                 |
| bucket_id     | ID of the versioned_s3_bucket   |
| bucket_arn     | ARN of the versioned_s3_bucket   |
| bucket_domain_name     | Bucket Domain Name of the versioned_s3_bucket   |

## License

**replicated_s3_bucket** is licensed under [Apache License, Version 2.0](https://github.com/AlexisNava/terraform_modules/blob/master/LICENSE).