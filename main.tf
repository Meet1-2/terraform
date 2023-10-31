provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "instance1" {
  ami           = "ami-0dbc3d7bc646e8516"
  instance_type = "t1.micro"

  tags = {
    name = "my-terra-instance"

  }
}