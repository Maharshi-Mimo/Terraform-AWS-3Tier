resource "aws_subnet" "private_subnet1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-south-1c"
  tags = {
    Name = "Private_subnet1"
  }
}
resource "aws_route_table" "private_route_table1" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "private_route1"
  }
}

# resource "aws_route" "private_route" {
#     route_table_id = aws_route_table.private_route_table.id
#     destination_cidr_block = "0.0.0.0/0"
#     nat_gateway_id = aws_nat_gateway.nat.id
# }

resource "aws_route_table_association" "private_subnet_association1" {
  subnet_id      = aws_subnet.private_subnet1.id
  route_table_id = aws_route_table.private_route_table1.id
}