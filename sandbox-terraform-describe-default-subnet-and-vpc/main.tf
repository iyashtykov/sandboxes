terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}


resource "aws_instance" "web1" {
    ami           = "ami-00a929b66ed6e0de6"
    instance_type = "t3a.small"

    subnet_id = aws_default_subnet.default_az1.id
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]

    tags = {
        Name: "My Test"
    }
}