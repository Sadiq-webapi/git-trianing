resource "aws_s3_bucket" "my_bucket" {
  bucket = "jenkins-s3-demo-bucket"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Environment = "Dev"
    Name        = "MyBucket"
  }
}
