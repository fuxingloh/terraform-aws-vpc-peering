resource "aws_vpc_peering_connection_accepter" "us-east-1_ap-northeast-2" {
  provider = aws.ap-northeast-2
  vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1_ap-northeast-2[0].id
  count = local.us-east-1 && local.ap-northeast-2 ? 1 : 0

  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "us-east-2_ap-northeast-2" {
  provider = aws.ap-northeast-2
  vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2_ap-northeast-2[0].id
  count = local.us-east-2 && local.ap-northeast-2 ? 1 : 0

  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "us-west-1_ap-northeast-2" {
  provider = aws.ap-northeast-2
  vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1_ap-northeast-2[0].id
  count = local.us-west-1 && local.ap-northeast-2 ? 1 : 0

  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "us-west-2_ap-northeast-2" {
  provider = aws.ap-northeast-2
  vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2_ap-northeast-2[0].id
  count = local.us-west-2 && local.ap-northeast-2 ? 1 : 0

  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "ap-east-1_ap-northeast-2" {
  provider = aws.ap-northeast-2
  vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1_ap-northeast-2[0].id
  count = local.ap-east-1 && local.ap-northeast-2 ? 1 : 0

  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "ap-south-1_ap-northeast-2" {
  provider = aws.ap-northeast-2
  vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1_ap-northeast-2[0].id
  count = local.ap-south-1 && local.ap-northeast-2 ? 1 : 0

  auto_accept = true
  tags = var.tags
}
