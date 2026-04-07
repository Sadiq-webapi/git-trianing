provider "aws" {
  region = "ap-south-2"
}

resource "aws_s3_bucket" "my_bucket"{
    bucket="devops-s3-firstbucket"
} 
