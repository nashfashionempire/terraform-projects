resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.demo_vpc1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "${var.aws_vpc}-public_rt"
  }
}

resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.demo_vpc1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "${var.aws_vpc}-private_rt"
  }
}

# public route table association to public subnet
 resource "aws_route_table_association" "rt_pub_ass" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_rt.id
}


# private route table association to private subnet
resource "aws_route_table_association" "rt_pri_ass" {
  subnet_id      =  aws_subnet.private_subnet.id
  route_table_id =  aws_route_table.private_rt.id
}
