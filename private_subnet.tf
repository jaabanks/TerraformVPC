resource "aws_subnet" "private_subnet_1" {
  vpc_id            = aws_vpc.Project_Terraform_VPC.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "private subnet 1"
  }
}