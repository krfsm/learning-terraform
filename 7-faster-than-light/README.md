# Part 7 - Faster Than Light

Started to add [Ansible](https://ansible.com) playbook to try _that_ out.

Syntax for the Makefile:
* `make all`: `terraform plan` for the `eu-central-1` AZ. Needed _something_ as a default.
* `make plan`: as above.
* `make plan-eu`: as above.
* `make plan-us`: as above for the `us-east-1` AZ.
* `make create`: `terraform apply` for `eu-central-1` AZ.
* `make create-eu`: as above.
* `make create-us`: as above for `us-east-1` AZ.
* `make www`: Will do `terraform apply` for `eu-central-1` AZ, then does an `ansible` whatever to get NGINX up and running with a microscale webpage. Currently kicks the EC2 instance IP into the `ansible_hosts` file, sets it as environmental variable, then does a ping check of the host.
* `make www-eu`: as above.
* `make www-us`: as above for `us-east-1` AZ.
* `make destroy`: `terraform destroy` for the `eu-central-1` AZ.
* `make destroy-eu`: as above.
* `make destroy-us`: as above for `us-east-1` AZ.
* `make clean`: removes any .tfstate and .tfstate.backup files lying around. No warnings, so be careful!
