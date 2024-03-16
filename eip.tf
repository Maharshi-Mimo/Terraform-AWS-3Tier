resource "aws_eip" "eip" {
    domain = "vpc"
    depends_on = [aws_internet_gateway.gw]
}
