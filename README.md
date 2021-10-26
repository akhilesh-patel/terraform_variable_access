# terraform_variable_access
#2nd method
############################################################################
main.tf


provider "aws" {
  region = "ap-south-1"
  profile = "default"
}

resource "aws_instance"  "akhileshfirst" {
  ami = "${var.ami_id}"
  instance_type = "${var.inst_type}"
  key_name = "${var.instance_key}"
  ############################################################################



 ↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕↕




##############################################################################
vim variabl.tf

variable "ami_id" {
    default = "ami-041d6256ed0f2061c"
}

variable "inst_type" {
   default = "t2.micro"
}

variable "instance_key" {
  default = "akhilesh_terraform"  #pem file
}

#############################################################################
