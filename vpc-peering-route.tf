resource "aws_route" "r_0_right" {
  provider = aws.r_0
  route_table_id = var.regions[0].route_table_id

  count = length(aws_vpc_peering_connection.r_0)
  vpc_peering_connection_id = aws_vpc_peering_connection.r_0[count.index].id
  destination_cidr_block = var.regions[1 + count.index].cidr_block
}

resource "aws_route" "r_1_left" {
  provider = aws.r_1
  route_table_id = var.regions[1].route_table_id

  count = length(local.accepter_1)
  vpc_peering_connection_id = local.accepter_1[count.index]
  destination_cidr_block = var.regions[count.index].cidr_block
}

resource "aws_route" "r_1_right" {
  provider = aws.r_1
  route_table_id = var.regions[1].route_table_id

  count = length(aws_vpc_peering_connection.r_1)
  vpc_peering_connection_id = aws_vpc_peering_connection.r_1[count.index].id
  destination_cidr_block = var.regions[2 + count.index].cidr_block
}

resource "aws_route" "r_2_left" {
  provider = aws.r_2
  route_table_id = var.regions[2].route_table_id

  count = length(local.accepter_2)
  vpc_peering_connection_id = local.accepter_2[count.index]
  destination_cidr_block = var.regions[count.index].cidr_block
}

resource "aws_route" "r_2_right" {
  provider = aws.r_2
  route_table_id = var.regions[2].route_table_id

  count = length(aws_vpc_peering_connection.r_2)
  vpc_peering_connection_id = aws_vpc_peering_connection.r_2[count.index].id
  destination_cidr_block = var.regions[3 + count.index].cidr_block
}

resource "aws_route" "r_3_left" {
  provider = aws.r_3
  route_table_id = var.regions[3].route_table_id

  count = length(local.accepter_3)
  vpc_peering_connection_id = local.accepter_3[count.index]
  destination_cidr_block = var.regions[count.index].cidr_block
}

//resource "aws_route" "r_3_right" {
//  provider = aws.r_3
//  route_table_id = var.regions[3].route_table_id
//
//  count = length(aws_vpc_peering_connection.r_3)
//  vpc_peering_connection_id = aws_vpc_peering_connection.r_3[count.index].id
//  destination_cidr_block = var.regions[4 + count.index].cidr_block
//}
