// AWS Provider
provider "aws" {
  region = "us-east-1"
}

variable "instance_type" {
  type = string
}

// AWS EC2 instance
resource "aws_instance" "instance1" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = var.instance_type
}

output "instance1-public-ip" {
  value = aws_instance.instance1.public_ip
}