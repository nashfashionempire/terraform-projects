# creating a varibale for the vpc name
variable "aws_vpc" {
  type = string
  default = "demo_vpc1"
  description = "vpc name"
  
}

# varibale for vpc cidr block
variable "cidr_block" {
  type = string
  default = "10.0.0.0/16"
  description = "cidr block"
  
  
}

# creating a variable for public subnet cidr
variable "public_subnet_cidr" {
  type = string
  default = "10.0.1.0/24"
  description = "public subnet cidr"
  
}

# creating a variable for private subnet cidr
variable "private_subnet_cidr" {
  type = string
  default = "10.0.2.0/24"
  description = "private subnet cidr"
  
}

# creating azs for subnets 
variable "azs" {
  type = list
  default = ["us-east-1a","us-east-1b"]
  description = "azs"

  
}

  

  
