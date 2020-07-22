# cloudwatch-billing-alert

Terreform module to create a new billing alert in AWS CloudWatch

## Requirements

- [Terraform >= v0.12.28](https://www.terraform.io/downloads.html)

## Installation

### Initialize the project

```sh
terraform init
```

### Install the local modules

```sh
terraform get cloudwatch-alert
terraform get sms-email-alert
```

## Usage

### Format

```sh
terraform fmt
```

### Plan

```sh
terraform plan
```

### Apply

```sh
terraform apply
```

## License

_cloudwatch-billing-alert_ is licensed under [Apache License, Version 2.0](https://github.com/AlexisNava/cloudwatch-billing-alert/blob/master/LICENSE).