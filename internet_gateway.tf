resource "aws_internet_gateway" "Project_IG" {
  vpc_id = aws_vpc.Project_Terraform_VPC  .id
  
  tags = {
    Name = "Project Internet Gateway"
  }
}
