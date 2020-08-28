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
| replicated_destination_bucket_name | Bucket name for the destination bucket | string | -       | :heavy_check_mark: |
| replicated_destination_bucket_name_tags | Tags for the destination bucket | map(string) | -       | :heavy_check_mark: |
| replicated_source_bucket_name | Bucket name for the source bucket | string | -       | :heavy_check_mark: |
| replicated_source_bucket_tags | Tags for the source bucket | map(string) | -       | :heavy_check_mark: |

## Outputs

| Name                            | Description           |
| :---:                           | :---:                 |
| source_bucket_id     | ID of the source_replicated_s3_bucket   |
| source_bucket_arn     | ARN of the source_replicated_s3_bucket   |
| source_bucket_domain_name     | Bucket Domain Name of the source_replicated_s3_bucket   |
| destination_bucket_id     | ID of the destination_replicated_s3_bucket   |
| destination_bucket_arn     | ARN of the destination_replicated_s3_bucket   |
| destination_bucket_domain_name     | Bucket Domain Name of the destination_replicated_s3_bucket   |

## License

**replicated_s3_bucket** is licensed under [Apache License, Version 2.0](https://github.com/AlexisNava/terraform_modules/blob/master/LICENSE).