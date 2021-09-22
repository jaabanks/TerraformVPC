resource "aws_vpc" "Project_Terraform_VPC" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "Project Terraform VPC"
  }
}
