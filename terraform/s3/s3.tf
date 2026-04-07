resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-12345"
  acl    = "private"

  tags = {
    Name        = "jenkins-demo-s3-bucket"
    Environment = "Dev"
  }
}
