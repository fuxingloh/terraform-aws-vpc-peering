resource "aws_route" "eu-west-3_us-east-1" {
  provider = aws.eu-west-3
  route_table_id = var.eu-west-3.route_table_id

  count = local.eu-west-3 && local.us-east-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.us-east-1_eu-west-3[0].id
  destination_cidr_block = var.us-east-1.cidr_block
}

resource "aws_route" "eu-west-3_us-east-2" {
  provider = aws.eu-west-3
  route_table_id = var.eu-west-3.route_table_id

  count = local.eu-west-3 && local.us-east-2 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.us-east-2_eu-west-3[0].id
  destination_cidr_block = var.us-east-2.cidr_block
}

resource "aws_route" "eu-west-3_us-west-1" {
  provider = aws.eu-west-3
  route_table_id = var.eu-west-3.route_table_id

  count = local.eu-west-3 && local.us-west-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.us-west-1_eu-west-3[0].id
  destination_cidr_block = var.us-west-1.cidr_block
}

resource "aws_route" "eu-west-3_us-west-2" {
  provider = aws.eu-west-3
  route_table_id = var.eu-west-3.route_table_id

  count = local.eu-west-3 && local.us-west-2 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.us-west-2_eu-west-3[0].id
  destination_cidr_block = var.us-west-2.cidr_block
}

resource "aws_route" "eu-west-3_ap-east-1" {
  provider = aws.eu-west-3
  route_table_id = var.eu-west-3.route_table_id

  count = local.eu-west-3 && local.ap-east-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.ap-east-1_eu-west-3[0].id
  destination_cidr_block = var.ap-east-1.cidr_block
}

resource "aws_route" "eu-west-3_ap-south-1" {
  provider = aws.eu-west-3
  route_table_id = var.eu-west-3.route_table_id

  count = local.eu-west-3 && local.ap-south-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.ap-south-1_eu-west-3[0].id
  destination_cidr_block = var.ap-south-1.cidr_block
}

resource "aws_route" "eu-west-3_ap-northeast-2" {
  provider = aws.eu-west-3
  route_table_id = var.eu-west-3.route_table_id

  count = local.eu-west-3 && local.ap-northeast-2 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-2_eu-west-3[0].id
  destination_cidr_block = var.ap-northeast-2.cidr_block
}

resource "aws_route" "eu-west-3_ap-southeast-1" {
  provider = aws.eu-west-3
  route_table_id = var.eu-west-3.route_table_id

  count = local.eu-west-3 && local.ap-southeast-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-1_eu-west-3[0].id
  destination_cidr_block = var.ap-southeast-1.cidr_block
}

resource "aws_route" "eu-west-3_ap-southeast-2" {
  provider = aws.eu-west-3
  route_table_id = var.eu-west-3.route_table_id

  count = local.eu-west-3 && local.ap-southeast-2 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.ap-southeast-2_eu-west-3[0].id
  destination_cidr_block = var.ap-southeast-2.cidr_block
}

resource "aws_route" "eu-west-3_ap-northeast-1" {
  provider = aws.eu-west-3
  route_table_id = var.eu-west-3.route_table_id

  count = local.eu-west-3 && local.ap-northeast-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.ap-northeast-1_eu-west-3[0].id
  destination_cidr_block = var.ap-northeast-1.cidr_block
}

resource "aws_route" "eu-west-3_ca-central-1" {
  provider = aws.eu-west-3
  route_table_id = var.eu-west-3.route_table_id

  count = local.eu-west-3 && local.ca-central-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.ca-central-1_eu-west-3[0].id
  destination_cidr_block = var.ca-central-1.cidr_block
}

resource "aws_route" "eu-west-3_eu-central-1" {
  provider = aws.eu-west-3
  route_table_id = var.eu-west-3.route_table_id

  count = local.eu-west-3 && local.eu-central-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.eu-central-1_eu-west-3[0].id
  destination_cidr_block = var.eu-central-1.cidr_block
}

resource "aws_route" "eu-west-3_eu-west-1" {
  provider = aws.eu-west-3
  route_table_id = var.eu-west-3.route_table_id

  count = local.eu-west-3 && local.eu-west-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-1_eu-west-3[0].id
  destination_cidr_block = var.eu-west-1.cidr_block
}

resource "aws_route" "eu-west-3_eu-west-2" {
  provider = aws.eu-west-3
  route_table_id = var.eu-west-3.route_table_id

  count = local.eu-west-3 && local.eu-west-2 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-2_eu-west-3[0].id
  destination_cidr_block = var.eu-west-2.cidr_block
}

// Split

resource "aws_route" "eu-west-3_eu-north-1" {
  provider = aws.eu-west-3
  route_table_id = var.eu-west-3.route_table_id

  count = local.eu-west-3 && local.eu-north-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-3_eu-north-1[0].id
  destination_cidr_block = var.eu-north-1.cidr_block
}

resource "aws_route" "eu-west-3_me-south-1" {
  provider = aws.eu-west-3
  route_table_id = var.eu-west-3.route_table_id

  count = local.eu-west-3 && local.me-south-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-3_me-south-1[0].id
  destination_cidr_block = var.me-south-1.cidr_block
}

resource "aws_route" "eu-west-3_sa-east-1" {
  provider = aws.eu-west-3
  route_table_id = var.eu-west-3.route_table_id

  count = local.eu-west-3 && local.sa-east-1 ? 1 : 0
  vpc_peering_connection_id = aws_vpc_peering_connection.eu-west-3_sa-east-1[0].id
  destination_cidr_block = var.sa-east-1.cidr_block
}
