# Where the credentials are stored
KEYS=-var-file="production.tfvars"

# "-us" uses -var region=us-east-1
US=-var region=us-east-1

all: plan-eu

plan-eu:
	terraform plan $(KEYS)

plan-us:
	terraform plan $(KEYS) $(US)

plan: plan-eu

create-eu:
	terraform apply $(KEYS)

create-us:
	terraform apply $(KEYS) $(US)

create: create-eu

destroy-eu:
	terraform destroy $(KEYS)

destroy-us:
	terraform destroy $(KEYS) $(US)

destroy: destroy-eu

clean:
	rm *.tfstate*
