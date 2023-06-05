# creating public subnet for the demo vpc
resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.demo_vpc1.id 
  cidr_block = var.public_subnet_cidr
  map_public_ip_on_launch = true
  availability_zone = var.azs[0]
  

  tags = {
    Name = "${var.aws_vpc}-public_subnet"
  }
}

# creating private subnet for the demo vpc
resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.demo_vpc1.id 
  cidr_block = var.private_subnet_cidr
  availability_zone = var.azs[1]

  

  tags = {
    Name = "${var.aws_vpc}-private_subnet"
  }
}