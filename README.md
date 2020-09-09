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
- [cloud_front_for_s3_bucket](./modules/cloud_front_for_s3_bucket/README.md)
- [ec2_instance](./modules/ec2_instance/README.md)
- [networking](./modules/networking/README.md)
- [replicated_s3_bucket](./modules/replicated_s3_bucket/README.md)
- [s3_versioned_bucket](./modules/s3_versioned_bucket/README.md)

## License

**terraform_modules** is licensed under [Apache License, Version 2.0](./LICENSE).