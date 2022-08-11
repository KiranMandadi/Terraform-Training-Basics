// AWS Provider
provider "aws" {
  region = "us-east-1"
}

// AWS Elastic IP
resource "aws_eip" "myeip" {

}

output "myeip-public-ip" {
  value = aws_eip.myeip.public_ip
}

// AWS S3 bucket
resource "aws_s3_bucket" "mys3" {
  bucket = "kiran-s3-bucket-2"
}

output "mys3-domain-name" {
  value       = aws_s3_bucket.mys3.bucket_domain_name
  description = "AWS S3 bucket domain name"
}

output "mys3-arn" {
  value     = aws_s3_bucket.mys3.arn
  sensitive = true
}

// Displays all attributes related to S3 bucket
/*output "mys3-all-attributes" {
  value = aws_s3_bucket.mys3
}*/
