output "myec2-public-ip" {
  value = aws_instance.myec2.public_ip
}

output "mys3-domain-name" {
  value       = aws_s3_bucket.mys3.bucket_domain_name
  description = "AWS S3 bucket domain name"
}