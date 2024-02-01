
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.34.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

resource "aws_ami_from_instance" "ec2_Instance" {
  name               = "AWS-AMI"
  source_instance_id = "i-0835b03675917b4be"
}
