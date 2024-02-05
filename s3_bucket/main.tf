resource "aws_s3_bucket" "example_bucket" {
  bucket = var.bucket

  tags = {
    Name        = "my-tf-test-bucket"
    Environment = "Test"
  }
}
