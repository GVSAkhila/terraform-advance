terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.66.0"
    }
  }

  backend "s3" {
    bucket = "17s-remote-state"
    key    = "remote-state-demo"
    region = "us-east-1"
    dynamodb_table = "17s-locking"
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}