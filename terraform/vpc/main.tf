resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "eks-vpc"
  }
}

resource "aws_subnet" "private" {
  count = length(var.private_subnets)
  vpc_id = aws_vpc.main.id
  cidr_block = var.private_subnets[count.index]
  availability_zone = element(var.availability_zones, count.index)
  tags = {
    Name = "eks-private-subnet-${count.index + 1}"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "eks-igw"
  }
}

resource "aws_route_table" "private" {
  count  = length(var.private_subnets)
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "eks-private-route-table-${count.index + 1}"
  }
}