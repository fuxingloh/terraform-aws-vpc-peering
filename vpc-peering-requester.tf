data "aws_caller_identity" "this" {
  provider = aws.r_0
}

resource "aws_vpc_peering_connection" "r_0" {
  provider = aws.r_0
  vpc_id = var.regions[0].vpc_id

  count = local.count - 1
  peer_vpc_id = var.regions[count.index + 1].vpc_id
  peer_region = var.regions[count.index + 1].region

  peer_owner_id = data.aws_caller_identity.this.account_id
  auto_accept = false
  tags = var.tags
}

resource "aws_vpc_peering_connection" "r_1" {
  provider = aws.r_1
  vpc_id = var.regions[1].vpc_id

  count = local.count - 2
  peer_vpc_id = var.regions[count.index + 2].vpc_id
  peer_region = var.regions[count.index + 2].region

  peer_owner_id = data.aws_caller_identity.this.account_id
  auto_accept = false
  tags = var.tags
}

resource "aws_vpc_peering_connection" "r_2" {
  provider = aws.r_2
  vpc_id = var.regions[2].vpc_id

  count = local.count - 3
  peer_vpc_id = var.regions[count.index + 3].vpc_id
  peer_region = var.regions[count.index + 3].region

  peer_owner_id = data.aws_caller_identity.this.account_id
  auto_accept = false
  tags = var.tags
}

