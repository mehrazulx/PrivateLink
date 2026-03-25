#create IGW
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.existing.id

  tags = {
    Name = "VPC-IGW"
  }
}

#route IGW with public Route table
resource "aws_route" "public_internet_access" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}

