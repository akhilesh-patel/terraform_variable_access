provider "aws" {
   region = "ap-south-1"
   access_key = "${var.access_key}"
   secret_key = "${var.secret_key}"
   profile    = "default"
}

resource "aws_instance" "os1"{
          ami = "put your ami_id"
          instance_type = "t2.micro"
          tags = {
               Name = "terraform_testing_variable"

   }

}
