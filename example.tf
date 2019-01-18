# Define provider and region. Credentials are accessed from awscli default location. 
provider "aws" {
  region     = "${var.region}"
}

# The EC2 instance to be launched 
resource "aws_instance" "example" {
  ami           = "ami-03fa1f014b48fa6bd"
  instance_type = "t2.micro"
}

# Elastic IP for the above mentioned EC2 instance 
resource "aws_eip" "ip" {
  instance = "${aws_instance.example.id}"
}
