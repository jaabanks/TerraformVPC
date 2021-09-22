variable "region" {
  description = "The region the environment is going to be installed into"
  type = string
  default = "us-east-1"
}

# VPC variables

variable "vpc_name" {
  description = "Name of the VPC.  Will be the prefix for all named resources"
  type = string
  default     = "Project_VPC"
}

variable "vpc_cidr" {
  description = "CIDR range of VPC"
  type = string
  default = "10.0.0.0/16"
}

variable "azs" {
  description = "availability zones to be created in the VPC"
  type = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "private_subnets" {
  description = "CIDR range for private subnets"
  type = list(string)
  default = ["10.0.3.0/24"]
}

variable "public_subnets" {
  description = "CIDR range for public subnets"
  type = list(string)
  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

# Database variables

variable "db_username" {
  description = "Database administrator username"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "Database administrator password"
  type        = string
  sensitive   = true
}

# Load Balancer variables

variable "lb_name" {
    description = "the name of the load balancer"
    type = string
    default = "Project_LB"
}