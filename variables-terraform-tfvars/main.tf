// AWS Provider
provider "aws" {
  region = "us-east-1"
}

variable "instance_type" {
  type    = string
  default = "t1.micro"
}

// AWS EC2 instance
resource "aws_instance" "instance2" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = var.instance_type
}

output "instance2-public-ip" {
  value = aws_instance.instance2.public_ip
}