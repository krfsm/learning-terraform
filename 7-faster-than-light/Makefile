# Where the credentials are stored
KEYS=-var-file="production.tfvars"

# "-us" uses -var region=us-east-1
US=-var region=us-east-1

all: plan-eu

# Get actual AWS credentials
init:
	cp ../../terraform.tfvars .

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

www:
	ansible ec2 -m ping

www-eu: www

www-us: www

destroy-eu:
	terraform destroy $(KEYS)
	rm ansible_hosts

destroy-us:
	terraform destroy $(KEYS) $(US)
	rm ansible_hosts

destroy: destroy-eu

clean:
	rm *.tfstate*
	cp ../terraform.tfvars .
