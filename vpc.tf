resource "aws_vpc" "Project_VPC" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "Project Terraform VPC"
  }
}