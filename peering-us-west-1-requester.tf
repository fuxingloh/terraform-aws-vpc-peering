resource "aws_vpc_peering_connection" "us-west-1_us-west-2" {
  provider = aws.us-west-1
  vpc_id = var.us-west-1.vpc_id

  peer_region = "us-west-2"
  peer_vpc_id = var.us-west-2.vpc_id

  count = local.us-west-1 && local.us-west-2 ? 1 : 0

  peer_owner_id = data.aws_caller_identity.this.account_id
  auto_accept = false
  tags = var.tags
}
