#variable "access_key" {}
#variable "secret_key" {}
# Above values are handled by awscli 

variable "region" {}

variable "keypair_name" {
  description = "The name of your pre-made key-pair in Amazon (e.g. david-IAM-keypair )"
}

variable "amis" {
  type = "map"

  default = {
    "us-east-1" = "ami-70dad51a"
    "us-west-2" = "ami-70e90210"
  }
}
