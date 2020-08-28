provider "aws" {
  region                  = "us-east-1"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "alxmedium_administrator"
  alias                   = "east_provider"
}

provider "aws" {
  region                  = "us-west-1"
  shared_credentials_file = "~/.aws/credentials"
  profile                 = "alxmedium_administrator"
  alias                   = "west_provider"
}

resource "aws_iam_role" "s3_bucket_replication_role" {
  name = "s3-bucket-replication-role"

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "s3.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
POLICY

  tags = {
    "MadeBy"          = "alxmedium_administrator"
    "MadeWith"        = "Terraform"
    "Module/Resource" = "replicated_s3_bucket"
    "Project"         = "terraform_modules"
    "PolicyAttached"  = "s3_bucket_replication_policy"
  }
}

resource "aws_iam_policy" "s3_bucket_replication_policy" {
  name = "s3-bucket-replication-policy"

  policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "s3:GetReplicationConfiguration",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "${aws_s3_bucket.replicated_source_bucket.arn}"
      ]
    },
    {
      "Action": [
        "s3:GetObjectVersion",
        "s3:GetObjectVersionAcl"
      ],
      "Effect": "Allow",
      "Resource": [
        "${aws_s3_bucket.replicated_source_bucket.arn}/*"
      ]
    },
    {
      "Action": [
        "s3:ReplicateObject",
        "s3:ReplicateDelete"
      ],
      "Effect": "Allow",
      "Resource": "${aws_s3_bucket.replicated_destination_bucket.arn}/*"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy_attachment" "s3_bucket_replication_role_attachment" {
  role       = aws_iam_role.s3_bucket_replication_role.name
  policy_arn = aws_iam_policy.s3_bucket_replication_policy.arn
}

resource "aws_s3_bucket" "replicated_destination_bucket" {
  provider = aws.west_provider
  bucket     = var.replicated_destination_bucket_name
  acl      = "private"

  versioning {
    enabled = true
  }

  tags = var.replicated_destination_bucket_name_tags
}

resource "aws_s3_bucket" "replicated_source_bucket" {
  provider = aws.east_provider
  bucket = var.replicated_source_bucket_name
  acl  = "private"

  versioning {
    enabled = true
  }

  replication_configuration {
    role = aws_iam_role.s3_bucket_replication_role.arn

    rules {
      id     = "replicated_source_bucket_rule"
      prefix = "replicated_bucket"
      status = "Enabled"

      destination {
        bucket        = aws_s3_bucket.replicated_destination_bucket.arn
        storage_class = "STANDARD"
      }
    }
  }

  tags = var.replicated_source_bucket_tags
}