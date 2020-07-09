provider "aws" {
  region     = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

variable "access_key" {}
variable "secret_key" {}

resource "aws_instance" "devopsng" {
  ami           = "ami-08f3d892de259504d"
  instance_type = "t2.micro"
  key_name      = "devopsng"

  tags = {
    Name = "DevOpsNG"
  }
}

resource "aws_instance" "devopsngone" {
  ami           = "ami-08f3d892de259504d"
  instance_type = "t2.micro"
  key_name      = "devopsng"
  tags = {
    Name = "DevOpsNGOne"
  }
}