#Private subnet____________________________________________________________________________________________
resource "aws_subnet" "existing_private" {
  vpc_id = aws_vpc.existing.id
  cidr_block = "10.1.1.0/24"
  availability_zone = "${var.aws_region}b"
  map_public_ip_on_launch = false


  tags = {
    name = "Private-subnet-1"
  }
}


#public
resource "aws_subnet" "existing_public" {
  vpc_id = aws_vpc.existing.id
  cidr_block = "10.1.0.0/24"
  availability_zone = "${var.aws_region}b"
  map_public_ip_on_launch = true


  tags = {
    name = "Public-subnet-2"
  }

}