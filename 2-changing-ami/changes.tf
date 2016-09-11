provider "aws" {
  access_key = "ACCESS_KEY_HERE"
  secret_key = "SECRET_KEY_HERE"
  region     = "eu-central-1"
}

#Ubuntu 16.04 LTS AMI for Frankfurt AZ
resource "aws_instance" "example" {
  ami           = "ami-9e6a9ef1"
  instance_type = "t2.micro"
}
