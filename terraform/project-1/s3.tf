terraform {
    required_version="1.14.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.39.0"
    }
  }
}

provider "aws" {
  region = "ap-south-2"
}

resource "aws_s3_bucket" "my_bucket"{
    bucket="devops-s3-firstbucket"
} 