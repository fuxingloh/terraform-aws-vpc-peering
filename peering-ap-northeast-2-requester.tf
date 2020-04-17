resource "aws_vpc_peering_connection" "ap-northeast-2_ap-southeast-1" {
  provider = aws.ap-northeast-2
  vpc_id = var.ap-northeast-2.vpc_id

  peer_region = "ap-southeast-1"
  peer_vpc_id = var.ap-southeast-1.vpc_id

  count = local.ap-northeast-2 && local.ap-southeast-1 ? 1 : 0

  peer_owner_id = data.aws_caller_identity.this.account_id
  auto_accept = false
  tags = var.tags
}

resource "aws_vpc_peering_connection" "ap-northeast-2_ap-southeast-2" {
  provider = aws.ap-northeast-2
  vpc_id = var.ap-northeast-2.vpc_id

  peer_region = "ap-southeast-2"
  peer_vpc_id = var.ap-southeast-2.vpc_id

  count = local.ap-northeast-2 && local.ap-southeast-2 ? 1 : 0

  peer_owner_id = data.aws_caller_identity.this.account_id
  auto_accept = false
  tags = var.tags
}

resource "aws_vpc_peering_connection" "ap-northeast-2_ap-northeast-1" {
  provider = aws.ap-northeast-2
  vpc_id = var.ap-northeast-2.vpc_id

  peer_region = "ap-northeast-1"
  peer_vpc_id = var.ap-northeast-1.vpc_id

  count = local.ap-northeast-2 && local.ap-northeast-1 ? 1 : 0

  peer_owner_id = data.aws_caller_identity.this.account_id
  auto_accept = false
  tags = var.tags
}

resource "aws_vpc_peering_connection" "ap-northeast-2_ca-central-1" {
  provider = aws.ap-northeast-2
  vpc_id = var.ap-northeast-2.vpc_id

  peer_region = "ca-central-1"
  peer_vpc_id = var.ca-central-1.vpc_id

  count = local.ap-northeast-2 && local.ca-central-1 ? 1 : 0

  peer_owner_id = data.aws_caller_identity.this.account_id
  auto_accept = false
  tags = var.tags
}

resource "aws_vpc_peering_connection" "ap-northeast-2_eu-central-1" {
  provider = aws.ap-northeast-2
  vpc_id = var.ap-northeast-2.vpc_id

  peer_region = "eu-central-1"
  peer_vpc_id = var.eu-central-1.vpc_id

  count = local.ap-northeast-2 && local.eu-central-1 ? 1 : 0

  peer_owner_id = data.aws_caller_identity.this.account_id
  auto_accept = false
  tags = var.tags
}

resource "aws_vpc_peering_connection" "ap-northeast-2_eu-west-1" {
  provider = aws.ap-northeast-2
  vpc_id = var.ap-northeast-2.vpc_id

  peer_region = "eu-west-1"
  peer_vpc_id = var.eu-west-1.vpc_id

  count = local.ap-northeast-2 && local.eu-west-1 ? 1 : 0

  peer_owner_id = data.aws_caller_identity.this.account_id
  auto_accept = false
  tags = var.tags
}

resource "aws_vpc_peering_connection" "ap-northeast-2_eu-west-2" {
  provider = aws.ap-northeast-2
  vpc_id = var.ap-northeast-2.vpc_id

  peer_region = "eu-west-2"
  peer_vpc_id = var.eu-west-2.vpc_id

  count = local.ap-northeast-2 && local.eu-west-2 ? 1 : 0

  peer_owner_id = data.aws_caller_identity.this.account_id
  auto_accept = false
  tags = var.tags
}

resource "aws_vpc_peering_connection" "ap-northeast-2_eu-west-3" {
  provider = aws.ap-northeast-2
  vpc_id = var.ap-northeast-2.vpc_id

  peer_region = "eu-west-3"
  peer_vpc_id = var.eu-west-3.vpc_id

  count = local.ap-northeast-2 && local.eu-west-3 ? 1 : 0

  peer_owner_id = data.aws_caller_identity.this.account_id
  auto_accept = false
  tags = var.tags
}

resource "aws_vpc_peering_connection" "ap-northeast-2_eu-north-1" {
  provider = aws.ap-northeast-2
  vpc_id = var.ap-northeast-2.vpc_id

  peer_region = "eu-north-1"
  peer_vpc_id = var.eu-north-1.vpc_id

  count = local.ap-northeast-2 && local.eu-north-1 ? 1 : 0

  peer_owner_id = data.aws_caller_identity.this.account_id
  auto_accept = false
  tags = var.tags
}

resource "aws_vpc_peering_connection" "ap-northeast-2_me-south-1" {
  provider = aws.ap-northeast-2
  vpc_id = var.ap-northeast-2.vpc_id

  peer_region = "me-south-1"
  peer_vpc_id = var.me-south-1.vpc_id

  count = local.ap-northeast-2 && local.me-south-1 ? 1 : 0

  peer_owner_id = data.aws_caller_identity.this.account_id
  auto_accept = false
  tags = var.tags
}

resource "aws_vpc_peering_connection" "ap-northeast-2_sa-east-1" {
  provider = aws.ap-northeast-2
  vpc_id = var.ap-northeast-2.vpc_id

  peer_region = "sa-east-1"
  peer_vpc_id = var.sa-east-1.vpc_id

  count = local.ap-northeast-2 && local.sa-east-1 ? 1 : 0

  peer_owner_id = data.aws_caller_identity.this.account_id
  auto_accept = false
  tags = var.tags
}
