variable "access_key" {}
variable "secret_key" {}
variable "region" {
	default = "eu-central-1"
}
variable "amis" {
	type = "map"
	default = {}
}
variable "secgroup-ssh" {
	type = "map"
	default = {}
}
variable "secgroup-www" {
	type = "map"
	default = {}
}

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

# Get AMI from list, default region if nothing's specified
resource "aws_instance" "ec2" {
  ami			= "ami-${lookup(var.amis,var.region)}"
  key_name		= "Cykranosh.com"
  instance_type		= "t2.micro"
  security_groups	= ["${lookup(var.secgroup-ssh,var.region)}","${lookup(var.secgroup-www,var.region)}"]
}

output "ip" {
	value = "${aws_instance.ec2.public_ip}"
}

output "public dns" {
	value = "${aws_instance.ec2.public_dns}"
}

