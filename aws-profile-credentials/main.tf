// AWS Provider
provider "aws" {
  region  = "us-east-1"
  profile = "aws-personal"
}

// AWS S3 bucket
resource "aws_s3_bucket" "sample-s3" {
  bucket = "kiran-s3-bucket-1"
  tags = {
    Description = "S3 bucket created by Terraform"
  }
}