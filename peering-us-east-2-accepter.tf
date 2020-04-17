resource "aws_vpc_peering_connection_accepter" "us-east-1_us-east-2" {
  provider = aws.us-east-2
  vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1_us-east-2[0].id
  count = local.us-east-1 && local.us-east-2 ? 1 : 0

  auto_accept = true
  tags = var.tags
}
