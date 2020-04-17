resource "aws_vpc_peering_connection_accepter" "us-east-1_eu-north-1" {
  provider = aws.eu-north-1
  vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1_eu-north-1[0].id
  count = local.us-east-1 && local.eu-north-1 ? 1 : 0

  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "us-east-2_eu-north-1" {
  provider = aws.eu-north-1
  vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2_eu-north-1[0].id
  count = local.us-east-2 && local.eu-north-1 ? 1 : 0

  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "us-west-1_eu-north-1" {
  provider = aws.eu-north-1
  vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1_eu-north-1[0].id
  count = local.us-west-1 && local.eu-north-1 ? 1 : 0

  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "us-west-2_eu-north-1" {
  provider = aws.eu-north-1
  vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2_eu-north-1[0].id
  count = local.us-west-2 && local.eu-north-1 ? 1 : 0

  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "ap-east-1_eu-north-1" {
  provider = aws.eu-north-1
  vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1_eu-north-1[0].id
  count = local.ap-east-1 && local.eu-north-1 ? 1 : 0

  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "ap-south-1_eu-north-1" {
  provider = aws.eu-north-1
  vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1_eu-north-1[0].id
  count = local.ap-south-1 && local.eu-north-1 ? 1 : 0

  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "ap-northeast-2_eu-north-1" {
  provider = aws.eu-north-1
  vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2_eu-north-1[0].id
  count = local.ap-northeast-2 && local.eu-north-1 ? 1 : 0

  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "ap-southeast-1_eu-north-1" {
  provider = aws.eu-north-1
  vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1_eu-north-1[0].id
  count = local.ap-southeast-1 && local.eu-north-1 ? 1 : 0

  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "ap-southeast-2_eu-north-1" {
  provider = aws.eu-north-1
  vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2_eu-north-1[0].id
  count = local.ap-southeast-2 && local.eu-north-1 ? 1 : 0

  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "ap-northeast-1_eu-north-1" {
  provider = aws.eu-north-1
  vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1_eu-north-1[0].id
  count = local.ap-northeast-1 && local.eu-north-1 ? 1 : 0

  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "ca-central-1_eu-north-1" {
  provider = aws.eu-north-1
  vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1_eu-north-1[0].id
  count = local.ca-central-1 && local.eu-north-1 ? 1 : 0

  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "eu-central-1_eu-north-1" {
  provider = aws.eu-north-1
  vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1_eu-north-1[0].id
  count = local.eu-central-1 && local.eu-north-1 ? 1 : 0

  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "eu-west-1_eu-north-1" {
  provider = aws.eu-north-1
  vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-1_eu-north-1[0].id
  count = local.eu-west-1 && local.eu-north-1 ? 1 : 0

  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "eu-west-2_eu-north-1" {
  provider = aws.eu-north-1
  vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-2_eu-north-1[0].id
  count = local.eu-west-2 && local.eu-north-1 ? 1 : 0

  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "eu-west-3_eu-north-1" {
  provider = aws.eu-north-1
  vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-3_eu-north-1[0].id
  count = local.eu-west-3 && local.eu-north-1 ? 1 : 0

  auto_accept = true
  tags = var.tags
}
