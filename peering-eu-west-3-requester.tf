resource "aws_vpc_peering_connection" "eu-west-3_eu-north-1" {
  provider = aws.eu-west-3
  vpc_id = var.eu-west-3.vpc_id

  peer_region = "eu-north-1"
  peer_vpc_id = var.eu-north-1.vpc_id

  count = local.eu-west-3 && local.eu-north-1 ? 1 : 0

  peer_owner_id = data.aws_caller_identity.this.account_id
  auto_accept = false
  tags = var.tags
}

resource "aws_vpc_peering_connection" "eu-west-3_me-south-1" {
  provider = aws.eu-west-3
  vpc_id = var.eu-west-3.vpc_id

  peer_region = "me-south-1"
  peer_vpc_id = var.me-south-1.vpc_id

  count = local.eu-west-3 && local.me-south-1 ? 1 : 0

  peer_owner_id = data.aws_caller_identity.this.account_id
  auto_accept = false
  tags = var.tags
}

resource "aws_vpc_peering_connection" "eu-west-3_sa-east-1" {
  provider = aws.eu-west-3
  vpc_id = var.eu-west-3.vpc_id

  peer_region = "sa-east-1"
  peer_vpc_id = var.sa-east-1.vpc_id

  count = local.eu-west-3 && local.sa-east-1 ? 1 : 0

  peer_owner_id = data.aws_caller_identity.this.account_id
  auto_accept = false
  tags = var.tags
}
