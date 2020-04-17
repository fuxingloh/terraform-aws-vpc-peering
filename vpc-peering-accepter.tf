locals {
  accepter_1 = local.count > 1 ? [
    aws_vpc_peering_connection.r_0[0].id
  ] : []

  accepter_2 = local.count > 2 ? [
    aws_vpc_peering_connection.r_0[1].id,
    aws_vpc_peering_connection.r_1[0].id
  ] : []

  accepter_3 = local.count > 3 ? [
    aws_vpc_peering_connection.r_0[2].id,
    aws_vpc_peering_connection.r_1[1].id,
    aws_vpc_peering_connection.r_2[0].id
  ] : []

//  accepter_4 = local.count > 4 ? [
//    aws_vpc_peering_connection.r_0[3].id,
//    aws_vpc_peering_connection.r_1[2].id,
//    aws_vpc_peering_connection.r_2[1].id,
//    aws_vpc_peering_connection.r_3[0].id
//  ] : []
//
//  accepter_5 = local.count > 5 ? [
//    aws_vpc_peering_connection.r_0[4].id,
//    aws_vpc_peering_connection.r_1[3].id,
//    aws_vpc_peering_connection.r_2[2].id,
//    aws_vpc_peering_connection.r_3[1].id,
//    aws_vpc_peering_connection.r_4[0].id
//  ] : []


}

resource "aws_vpc_peering_connection_accepter" "r_1" {
  count = length(local.accepter_1)
  vpc_peering_connection_id = local.accepter_1[count.index]

  provider = aws.r_1
  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "r_2" {
  count = length(local.accepter_2)
  vpc_peering_connection_id = local.accepter_2[count.index]

  provider = aws.r_2
  auto_accept = true
  tags = var.tags
}

resource "aws_vpc_peering_connection_accepter" "r_3" {
  count = length(local.accepter_3)
  vpc_peering_connection_id = local.accepter_3[count.index]

  provider = aws.r_3
  auto_accept = true
  tags = var.tags
}
