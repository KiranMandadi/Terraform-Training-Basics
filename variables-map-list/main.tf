provider "aws" {
  region = "us-east-1"
}

variable "instanceTypeList" {
  type    = list
  default = ["m5.large", "m5.xlarge", "t2.medium"]
}

variable "instanceTypeMap" {
  type = map
  default = {
    us-east-1 = "t1.nano"
    us-west-2 = "t2.micro"
  }
}

resource "aws_instance" "instance3" {
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = var.instanceTypeList[1] // List
  //instance_type = var.instanceTypeMap["us-west-2"]
}