// AWS EC2 Instance
resource "aws_instance" "myec2" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = "Terraform EC2 Instance(Config-Structuring)"
  }
}

// AWS S3 bucket
resource "aws_s3_bucket" "mys3" {
  bucket = "kiran-s3-bucket-5"
  tags = {
    Description = "S3 bucket created by Terraform"
  }
}