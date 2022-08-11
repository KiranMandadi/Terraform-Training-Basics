// AWS Provider
provider "aws" {
  region = "us-east-1"
}

variable "instance_type" {
  type    = string
  default = "t1.micro"
}

// AWS EC2 instance
resource "aws_instance" "instance3" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = var.instance_type
}

output "instance3-public-ip" {
  value = aws_instance.instance3.public_ip
}