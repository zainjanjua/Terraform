resource "aws_route_table" "RT" {
  vpc_id = aws_vpc.VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IG.id
  }

  route {
    ipv6_cidr_block = "::/0"
    gateway_id      = aws_internet_gateway.IG.id
  }

  tags = {
    Name = "TF"
  }
}
