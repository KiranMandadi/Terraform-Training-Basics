locals {
  common_tags = {
    Name    = "Terraform AWS Resource"
    Product = "Service Product"
    Owner   = "AD Team"
  }
}

resource "aws_instance" "app-dev-public" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"
  tags          = local.common_tags
}

resource "aws_ebs_volume" "dev-ebs" {
  availability_zone = "us-east-1a"
  size              = 8
  tags              = local.common_tags
}