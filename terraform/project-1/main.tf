terraform {
  required_version = "1.14.8"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.39.0"
    }
  }
}

provider "aws" {
  region     = "ap-south-2"
}

resource "aws_instance" "my-aws_instance" {
  ami           = "ami-0c1a7f89451184c8b"   # Example Amazon Linux 2023 AMI for ap-south-2
  instance_type = "t3.micro"

  tags = {
    Name = "MyEC2Instance"
  }
}
