terraform {
  required_version = "~> 1.9.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.2.0"
    }
  }
  backend "s3" {
    bucket         = "my-eks"
    region         = "us-east-1"
    key            = "eks/backend.tf"
    dynamodb_table = "lock-id"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
