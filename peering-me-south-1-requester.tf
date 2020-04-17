resource "aws_vpc_peering_connection" "me-south-1_sa-east-1" {
  provider = aws.me-south-1
  vpc_id = var.me-south-1.vpc_id

  peer_region = "sa-east-1"
  peer_vpc_id = var.sa-east-1.vpc_id

  count = local.me-south-1 && local.sa-east-1 ? 1 : 0

  peer_owner_id = data.aws_caller_identity.this.account_id
  auto_accept = false
  tags = var.tags
}
