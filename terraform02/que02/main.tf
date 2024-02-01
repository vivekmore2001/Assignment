
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

resource "aws_instance" "Hello-Terraform-ElasticIP" {
  ami           = "ami-09694bfab577e90b0"
  instance_type = "t2.micro"

  tags = {
    Name = "Hello-Terraform-ElasticIP"
  }

}

 resource "aws_key_pair" "test" {
  key_name = var.key_pair_name
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDEvGinuejD2zir4eXLBnjfgRk7ZtU2I1Arldw37oq4eoIOIvB9d7MoJ5xzZfgQGNh9GvdnFDFOA35orhkgHHMnczVbv4u8DH4oPeRO4yLl3+EuIOlgWS9snCWj/MM+r1waWJckvqksNQgsMzS+5djebvw/+7noTy9M05oBBfPg7fLYY6/hhuRbI/yHkpjJG3ipNoiX1tav5Uzq8jRRNJOajuH3wVDCnPosYOOBGNeNeWOp+pWUWgNlSNqcYjRwzFcbE4mykuTUElzRHEEd7uTtE9Rz879bUQmajQ/UNoQtBb6tOUa74UPhbeYWAcioHRoG7T5KDBx1ZfSvYylGRJvH+CtATxeZCGIuzkvt7+//CofkyAQ0OZeh0jj43czy6ZNZFJe37ixP9Yr8yBmLRkpVEwf84fRRRMKyG3dPLMGWC7rTn/7r8wf9TtJxAJp30eAnCNAgHYj+Wk2/16Qu5QqkGSp9lXeHCZpIaNzSlYLWuyHS9pTx+bQH/mPm2RIV8BM= root@DESKTOP-PDOJQQA"
}

 
resource "aws_security_group" "example" {
  name        = var.security_group_name

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
 
data "aws_security_group" "existing" {
  name = "default"
}

  resource "aws_vpc_security_group_egress_rule" "example" {
  security_group_id = "sg-0670c552b0735f85d"

  cidr_ipv4   = "10.0.0.0/8"
  from_port   = 0
  ip_protocol = "tcp"
  to_port     = 0
}

resource "aws_eip" "lb" {
  instance = aws_instance.Hello-Terraform-ElasticIP.id
  domain   = "vpc"
}

output "public_dns" {
  value = aws_instance.Hello-Terraform-ElasticIP.public_dns

}

output "private_dns" {
  value = aws_instance.Hello-Terraform-ElasticIP.private_dns
}

output "private_ip" {
  value = aws_instance.Hello-Terraform-ElasticIP.private_ip
}

output "public_ip" {
  value = aws_instance.Hello-Terraform-ElasticIP.public_ip
}


