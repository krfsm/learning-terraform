# Where the credentials are stored
KEYS=-var-file="production.tfvars"

# "-us" uses -var region=us-east-1
US=-var region=us-east-1

all:
	terraform plan $(KEYS)

plan-eu:
	terraform plan $(KEYS)

plan-us:
	terraform plan $(KEYS) $(US)

create-eu:
	terraform apply $(KEYS)

create-us:
	terraform apply $(KEYS) $(US)

destroy-eu:
	terraform destroy $(KEYS)

destroy-us:
	terraform destroy $(KEYS) $(US)

clean:
	rm *.tfstate*
