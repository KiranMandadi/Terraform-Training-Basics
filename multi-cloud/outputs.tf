output "aws-ec2-public-ip" {
  value = aws_instance.myec2.public_ip
  description = "AWS EC2 instance public IP"
}

output "google-storage-bucket-url" {
  value       = google_storage_bucket.google-bucket.url
  description = "Google storage bucket URL"
}