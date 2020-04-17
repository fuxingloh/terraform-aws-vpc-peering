variable "tags" {
  type = map(string)
  default = {}
  description = "Tags to attach to all VPC peering resources. (Optional)"
}

variable "us-east-1" {
  type = object({
    vpc_id = string,
    route_table_id = string,
    cidr_block = string
  })
  default = null
  description = "US-EAST-1 Region for peering. (Optional)"
}

variable "us-east-2" {
  type = object({
    vpc_id = string,
    route_table_id = string,
    cidr_block = string
  })
  default = null
  description = "US-EAST-2 Region for peering. (Optional)"
}

variable "us-west-1" {
  type = object({
    vpc_id = string,
    route_table_id = string,
    cidr_block = string
  })
  default = null
  description = "US-WEST-1 Region for peering. (Optional)"
}

variable "us-west-2" {
  type = object({
    vpc_id = string,
    route_table_id = string,
    cidr_block = string
  })
  default = null
  description = "US-WEST-2 Region for peering. (Optional)"
}



