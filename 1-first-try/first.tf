provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "eu-central-1"
}

#Debian/Jessie AMI for Frankfurt AZ
resource "aws_instance" "example" {
  ami           = "ami-47d93c28"
  instance_type = "t2.micro"
}
