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
	printf "[ec2]\n`terraform output ip`\n" > ansible_hosts

create-us:
	terraform apply $(KEYS) $(US)
	printf "[ec2]\n`terraform output ip`\n" > ansible_hosts

create: create-eu

www: www-eu

www-eu:
	ansible ec2 -u admin -m ping


destroy-eu:
	terraform destroy $(KEYS)

destroy-us:
	terraform destroy $(KEYS) $(US)

destroy: destroy-eu

clean:
	rm *.tfstate*
