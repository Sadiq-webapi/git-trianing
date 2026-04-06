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
resource "aws_instance" "my-aws_instance"
{

}