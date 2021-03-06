resource "aws_vpc_peering_connection_accepter" "us-east-1_us-west-2" {
  provider = aws.us-west-2
  vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1_us-west-2[0].id
  count = local.us-east-1 && local.us-west-2 ? 1 : 0

  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "us-east-2_us-west-2" {
  provider = aws.us-west-2
  vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2_us-west-2[0].id
  count = local.us-east-2 && local.us-west-2 ? 1 : 0

  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "us-west-1_us-west-2" {
  provider = aws.us-west-2
  vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1_us-west-2[0].id
  count = local.us-west-1 && local.us-west-2 ? 1 : 0

  auto_accept = true
  tags = var.tags
}
