resource "aws_s3_bucket" "test-bucket" {
    bucket = "test-s3-bucket-aalaniz-2026-05-08"
    tags = {
      Name      = "S3Bucket"
      CreatedBy = "TestUser"
    }
  }

resource "aws_s3_bucket_versioning" "enable_version" {
    bucket = aws_s3_bucket.test-bucket.bucket
    versioning_configuration {
      status = "Enabled"
    }
  }