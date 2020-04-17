variable "regions" {
  type = list(object({
    region = string,
    vpc_id = string,
    route_table_id = string,
    cidr_block = string,
  }))
  default = []
  description = "A list of all region and vpc_id to peer together."
}

variable "tags" {
  type = map(string)
  default = {}
  description = "Tags to attach to all peering resources."
}

locals {
  // Minimally need 2 region for this module.
  count = length(var.regions) > 1 ? length(var.regions) : 0
}
