# terraform-test
Ilhaan plays around with Terraform. Followed getting started guide [here](https://learn.hashicorp.com/terraform/getting-started/build). 

This repo can be used to spin up an EC2 instance that only allows SSH inbound connections via port 22 and all outbound connections.  

## Instructions
This repo assumes that AWS configuration and credential files are managed by [`awscli`](https://aws.amazon.com/cli/) based on [this](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html). 

Once your AWS credentials are set up, follow the instructions below: 

1. Clone this repo and `cd` into the `ec2_instance` directory. Create `terraform.tfvars` in this directory and add the following line: 
```
keypair_name="<keypair-name-without-extension>"
```
The keypair above can be stored in `~/.ssh/`. 

2. Run `terraform apply` to deploy instance 
3. Once the instance is deployed, the instance's public DNS will be output to the terminal, which can be used to gain SSH access to the instance. 
4. To spin down the instance, run `terraform destroy`

## Reference 
* https://github.com/InsightDataScience/aws-ops-insight/tree/master/terraform
