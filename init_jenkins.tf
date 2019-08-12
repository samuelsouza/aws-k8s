provider "aws" {
  profile    = "default"
  region     = "us-east-2"
}

resource "aws_instance" "jenkins" {
  ami           = "ami-0b5d210cd7546bccb"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-0097356cd04592ea6"]
  subnet_id = "subnet-0c3fa2a8b3a65189d"
}
