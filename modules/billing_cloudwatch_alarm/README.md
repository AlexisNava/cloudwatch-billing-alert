# billing_cloudwatch_alarm

**billing_cloudwatch_alarm** is a Terraform module that creates Billing alarms in AWS CloudWatch and sends an SMS message when the defined threshold is rebased 

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
| alarm_name | CloudWatch Alarm Name | string | -       | :heavy_check_mark: |
| usd_amount_threshold | The USD amount threshold | string | -       | :heavy_check_mark: |
| sms_enpoint | Phone number to subscribe to the SMS alert | string | -       | :heavy_check_mark: |

## Outputs

| Name                            | Description           |
| :---:                           | :---:                 |
| cloudwatch_alarm_alarm_name     | The alarm name for the billing_cloudwatch_alarm module   |
| cloudwatch_alarm_period     | Period of time in seconds (6 hrs)   |

## License

**billing_cloudwatch_alarm** is licensed under [Apache License, Version 2.0](https://github.com/AlexisNava/terraform_modules/blob/master/LICENSE).