variable "access_key" {}
variable "secret_key" {}
variable "region" {
	default = "eu-central-1"
}

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

#Debian/Jessie AMI for Frankfurt AZ
resource "aws_instance" "example" {
  ami           = "ami-47d93c28"
  instance_type = "t2.micro"
}
