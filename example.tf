# Define provider and region. Credentials are accessed from awscli default location. 
provider "aws" {
  region     = "${var.region}"
}

# Security group that allows only port 22 (SSH) for inbound and everything for outbound 
resource "aws_security_group" "ssh" {
  name = "allow-ssh"
  description = "Security group that allows inbound SSH from internet and all outbound connections"

  ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

	egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  tags {
    Name = "allow-ssh"
  }
}

# The EC2 instance to be launched 
resource "aws_instance" "example" {
  ami           = "ami-03fa1f014b48fa6bd"
  instance_type = "t2.micro"
  key_name        = "${var.keypair_name}"
	vpc_security_group_ids = ["${aws_security_group.ssh.id}"]
}
