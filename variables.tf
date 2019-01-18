#variable "access_key" {}
#variable "secret_key" {}
# Above values are handled by awscli 
variable "region" {
  default = "us-west-2"
}

variable "keypair_name" {
	description = "The name of your pre-made key-pair in Amazon (e.g. david-IAM-keypair )"
}
