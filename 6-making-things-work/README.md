# Part 6 - Making Things Work

This is where things start to get a bit more advanced. In [part 5](../5-outputs) I started to mess around with maps, and in this part I both added security groups for the AZs and a Makefile.

Syntax for the Makefile:
* `make all`: `terraform plan` for the `eu-central-1` AZ. Needed _something_ as a default.
* `make plan`: as above.
* `make plan-eu`: as above.
* `make plan-us`: as above for the `us-east-1` AZ.
* `make create`: `terraform apply` for `eu-central-1` AZ.
* `make create-eu`: as above.
* `make create-us`: as above for `us-east-1` AZ.
* `make destroy`: `terraform destroy` for the `eu-central-1` AZ.
* `make destroy-eu`: as above.
* `make destroy-us`: as above for `us-east-1` AZ.
* `make clean`: removes any .tfstate and .tfstate.backup files lying around. No warnings, so be careful!
