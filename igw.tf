resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.demo_vpc1.id 

  tags = {
    Name = "${var.aws_vpc}-igw"
  }
}