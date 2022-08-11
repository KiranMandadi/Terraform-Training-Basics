// AWS EC2 instance
resource "aws_instance" "myec2" {
  ami = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"

  tags = {
    Name = "Private EC2 Instance (Multi-Cloud)"
  }
}