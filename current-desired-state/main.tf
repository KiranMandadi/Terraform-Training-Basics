// AWS Provider
provider "aws" {
  region = "us-east-1"
}

// AWS EC2 instance
resource "aws_instance" "public-ec2" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t1.micro"

  tags = {
    Name = "Public EC2 Instance (Current-Desired-State)"
    Team = "Dev"
  }
}