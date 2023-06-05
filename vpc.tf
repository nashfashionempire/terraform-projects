resource "aws_vpc" "demo_vpc1" {
  cidr_block       = var.cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "${var.aws_vpc}"
  }
}