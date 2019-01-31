module "west-pipeline" {
  source       = "ec2_instance"
  region       = "us-west-2"
  keypair_name = "ilhaan-IAM-keypair"
}

module "east-pipeline" {
  source       = "ec2_instance"
  region       = "us-east-1"
  keypair_name = "ilhaan-IAM-keypair"
}
