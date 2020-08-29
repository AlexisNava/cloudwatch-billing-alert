# cloud_front_for_s3_bucket

**cloud_front_for_s3_bucket** is a Terraform module that creates Cloud Front for an S3 bucket.

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
| cloud_front_s3_bucket_name | Name for the cloud_front_s3_bucket | string | -       | :heavy_check_mark: |
| cloud_front_s3_bucket_tags | Tags for the cloud_front_s3_bucket | map(string) | -       | :heavy_check_mark: |
| cloud_front_distribution_s3_bucket_tags | Tags for the cloud_front_distribution_s3_bucket | map(string) | -       | :heavy_check_mark: |

## Outputs

| Name                            | Description           |
| :---:                           | :---:                 |
| cloud_front_s3_bucket_id     | ID of the cloud_front_s3_bucket   |
| cloud_front_s3_bucket_arn     | ARN of the cloud_front_s3_bucket   |
| cloud_front_s3_bucket_bucket_domain_name     | Bucket Domain Name of the cloud_front_s3_bucket  |
| cloud_front_distribution_s3_bucket_id     | ID of the cloud_front_distribution_s3_bucket  |
| cloud_front_distribution_s3_bucket_arn     | ARN of the cloud_front_distribution_s3_bucket  |
| cloud_front_distribution_s3_bucket_domain_name     | Domain Name of the cloud_front_distribution_s3_bucket  |

## License

**cloud_front_for_s3_bucket** is licensed under [Apache License, Version 2.0](https://github.com/AlexisNava/terraform_modules/blob/master/LICENSE).