# terraform-test
Ilhaan plays around with Terraform 
Followed getting started guide [here](https://learn.hashicorp.com/terraform/getting-started/)

## Instructions
This repo assumes that AWS configuration and credential files are managed by [`awscli`](https://aws.amazon.com/cli/) based on [this](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html). 

Once your AWS credentials are set up, follow the instructions below: 

1. Create `terraform.tfvars` in this directory and add the following line: 
```
keypair_name="<keypair-name-without-extension>"
```
The keypair above can be stored in `~/.ssh/`. 

2. Run `terraform apply` to deploy instance 

## Reference 
* https://github.com/InsightDataScience/aws-ops-insight/tree/master/terraform
