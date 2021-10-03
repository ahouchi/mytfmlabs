terraform {
  required_version = ">= 0.11.0"
}

provider "aws" {
  region = var.aws_region
}

# security group
resource "aws_security_group" "sginout" {
  name = "sgsshpermit"

  #Incoming traffic
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["65.94.232.139/32"] # replace with your ip address
  }

  #Outgoing traffic
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Key pair
#resource "aws_key_pair" "tfm_key" {
#  key_name = "ssh_key"
#  public_key = var.sshpubkey
#}

#Create aws instance
resource "aws_instance" "mylinux2021" {
  ami               = var.ami_id
  instance_type     = var.instance_type
  availability_zone = "${var.aws_region}a"
  key_name = sshpubkey
  security_groups = ["sgsshpermit"]

  tags = {
    Name = "${var.name}"
  }
}
