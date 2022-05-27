provider "aws" {
  profile    = "default"
  region     = "us-east-1"
}

resource "aws_instance" "Terraform-instance" {
  ami           = var.tfami
  instance_type = var.t2micro
}

terraform {
backend "s3" {
bucket = "tfbucket-s3"
key = "path/to/my/key"
region = "us-east-1"
}
}