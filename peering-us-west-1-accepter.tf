resource "aws_vpc_peering_connection_accepter" "us-east-1_us-west-1" {
  provider = aws.us-west-1
  vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1_us-west-1[0].id
  count = local.us-east-1 && local.us-west-1 ? 1 : 0

  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "us-east-2_us-west-1" {
  provider = aws.us-west-1
  vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2_us-west-1[0].id
  count = local.us-east-2 && local.us-west-1 ? 1 : 0

  auto_accept = true
  tags = var.tags
}
