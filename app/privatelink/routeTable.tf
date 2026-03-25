# Private route table______________________________________________________________________________________
resource "aws_route_table" "private" {
  vpc_id = aws_vpc.existing.id

  tags = {
    Name = "RT2"
  }
}

#public route table
resource "aws_route_table" "public" {
  vpc_id = aws_vpc.existing.id

  tags = {
    Name = "publicRT"
  }
}



# Associate private subnet with  route table________________________________________________________________________________
resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.existing_private.id
  route_table_id = aws_route_table.private.id
}





#asssociate public subnet with route table------------------------------------------------------------------
resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.existing_public.id
  route_table_id = aws_route_table.public.id
}


