provider "aws" {
  region     = "us-west-2"
}

resource "aws_instance" "example" {
  ami           = "ami-03fa1f014b48fa6bd"
  instance_type = "t2.micro"
}
