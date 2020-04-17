resource "aws_route" "me-south-1_us-east-1" {
  provider = aws.me-south-1
  route_table_id = var.me-south-1.route_table_id

  count = local.me-south-1 && local.us-east-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1_me-south-1[0].id
  destination_cidr_block = var.us-east-1.cidr_block
}

resource "aws_route" "me-south-1_us-east-2" {
  provider = aws.me-south-1
  route_table_id = var.me-south-1.route_table_id

  count = local.me-south-1 && local.us-east-2 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2_me-south-1[0].id
  destination_cidr_block = var.us-east-2.cidr_block
}

resource "aws_route" "me-south-1_us-west-1" {
  provider = aws.me-south-1
  route_table_id = var.me-south-1.route_table_id

  count = local.me-south-1 && local.us-west-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1_me-south-1[0].id
  destination_cidr_block = var.us-west-1.cidr_block
}

resource "aws_route" "me-south-1_us-west-2" {
  provider = aws.me-south-1
  route_table_id = var.me-south-1.route_table_id

  count = local.me-south-1 && local.us-west-2 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2_me-south-1[0].id
  destination_cidr_block = var.us-west-2.cidr_block
}

resource "aws_route" "me-south-1_ap-east-1" {
  provider = aws.me-south-1
  route_table_id = var.me-south-1.route_table_id

  count = local.me-south-1 && local.ap-east-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1_me-south-1[0].id
  destination_cidr_block = var.ap-east-1.cidr_block
}

resource "aws_route" "me-south-1_ap-south-1" {
  provider = aws.me-south-1
  route_table_id = var.me-south-1.route_table_id

  count = local.me-south-1 && local.ap-south-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1_me-south-1[0].id
  destination_cidr_block = var.ap-south-1.cidr_block
}

resource "aws_route" "me-south-1_ap-northeast-2" {
  provider = aws.me-south-1
  route_table_id = var.me-south-1.route_table_id

  count = local.me-south-1 && local.ap-northeast-2 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2_me-south-1[0].id
  destination_cidr_block = var.ap-northeast-2.cidr_block
}

resource "aws_route" "me-south-1_ap-southeast-1" {
  provider = aws.me-south-1
  route_table_id = var.me-south-1.route_table_id

  count = local.me-south-1 && local.ap-southeast-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1_me-south-1[0].id
  destination_cidr_block = var.ap-southeast-1.cidr_block
}

resource "aws_route" "me-south-1_ap-southeast-2" {
  provider = aws.me-south-1
  route_table_id = var.me-south-1.route_table_id

  count = local.me-south-1 && local.ap-southeast-2 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2_me-south-1[0].id
  destination_cidr_block = var.ap-southeast-2.cidr_block
}

resource "aws_route" "me-south-1_ap-northeast-1" {
  provider = aws.me-south-1
  route_table_id = var.me-south-1.route_table_id

  count = local.me-south-1 && local.ap-northeast-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1_me-south-1[0].id
  destination_cidr_block = var.ap-northeast-1.cidr_block
}

resource "aws_route" "me-south-1_ca-central-1" {
  provider = aws.me-south-1
  route_table_id = var.me-south-1.route_table_id

  count = local.me-south-1 && local.ca-central-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1_me-south-1[0].id
  destination_cidr_block = var.ca-central-1.cidr_block
}

resource "aws_route" "me-south-1_eu-central-1" {
  provider = aws.me-south-1
  route_table_id = var.me-south-1.route_table_id

  count = local.me-south-1 && local.eu-central-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1_me-south-1[0].id
  destination_cidr_block = var.eu-central-1.cidr_block
}

resource "aws_route" "me-south-1_eu-west-1" {
  provider = aws.me-south-1
  route_table_id = var.me-south-1.route_table_id

  count = local.me-south-1 && local.eu-west-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-1_me-south-1[0].id
  destination_cidr_block = var.eu-west-1.cidr_block
}

resource "aws_route" "me-south-1_eu-west-2" {
  provider = aws.me-south-1
  route_table_id = var.me-south-1.route_table_id

  count = local.me-south-1 && local.eu-west-2 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-2_me-south-1[0].id
  destination_cidr_block = var.eu-west-2.cidr_block
}

resource "aws_route" "me-south-1_eu-west-3" {
  provider = aws.me-south-1
  route_table_id = var.me-south-1.route_table_id

  count = local.me-south-1 && local.eu-west-3 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-3_me-south-1[0].id
  destination_cidr_block = var.eu-west-3.cidr_block
}

resource "aws_route" "me-south-1_eu-north-1" {
  provider = aws.me-south-1
  route_table_id = var.me-south-1.route_table_id

  count = local.me-south-1 && local.eu-north-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.eu-north-1_me-south-1[0].id
  destination_cidr_block = var.eu-north-1.cidr_block
}

// Split

resource "aws_route" "me-south-1_sa-east-1" {
  provider = aws.me-south-1
  route_table_id = var.me-south-1.route_table_id

  count = local.me-south-1 && local.sa-east-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.me-south-1_sa-east-1[0].id
  destination_cidr_block = var.sa-east-1.cidr_block
}
