// AWS Provider
provider "aws" {
  region = "us-east-1"
}

// AWS EC2 instance
resource "aws_instance" "first-server" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"

  tags = {
    Name = "Instance-1 (Destroy-Resources)"
  }
}

// AWS EC2 instance
resource "aws_instance" "second-server" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"

  tags = {
    Name = "Instance-2 (Destroy-Resources)"
  }
}
