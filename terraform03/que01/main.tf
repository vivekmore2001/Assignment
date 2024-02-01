

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

resource "aws_instance" "web" {
  ami           = "ami-09694bfab577e90b0"
  instance_type = "t2.micro"

  tags = {
    Name = "ec2 Instance"
  }

}

resource "aws_key_pair" "user" {
  key_name      = "aws_key_pair.user.key_name"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDEvGinuejD2zir4eXLBnjfgRk7ZtU2I1Arldw37oq4eoIOIvB9d7MoJ5xzZfgQGNh9GvdnFDFOA35orhkgHHMnczVbv4u8DH4oPeRO4yLl3+EuIOlgWS9snCWj/MM+r1waWJckvqksNQgsMzS+5djebvw/+7noTy9M05oBBfPg7fLYY6/hhuRbI/yHkpjJG3ipNoiX1tav5Uzq8jRRNJOajuH3wVDCnPosYOOBGNeNeWOp+pWUWgNlSNqcYjRwzFcbE4mykuTUElzRHEEd7uTtE9Rz879bUQmajQ/UNoQtBb6tOUa74UPhbeYWAcioHRoG7T5KDBx1ZfSvYylGRJvH+CtATxeZCGIuzkvt7+//CofkyAQ0OZeh0jj43czy6ZNZFJe37ixP9Yr8yBmLRkpVEwf84fRRRMKyG3dPLMGWC7rTn/7r8wf9TtJxAJp30eAnCNAgHYj+Wk2/16Qu5QqkGSp9lXeHCZpIaNzSlYLWuyHS9pTx+bQH/mPm2RIV8BM= root@DESKTOP-PDOJQQA"
}

