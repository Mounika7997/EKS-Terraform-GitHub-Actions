terraform {
  required_version = "~> 1.9.4"
  required_providers {
    aws = {
      source  = "aws"
      version = "5.49.0"
    }
  }
}

provider "aws" {
  region  = var.aws-region
}

terraform {
  backend "s3" {
    bucket         = "my-eks"
    region         = "us-east-1"
    key            = "eks/backend.tf"
    dynamodb_table = "lock-id"
    encrypt        = true
  }
}
