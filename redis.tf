data "ns_connection" "redis" {
  name     = "redis"
  contract = "datastore/gcp/redis:*"
}

locals {
  protocol = data.ns_connection.redis.outputs.db_protocol
  endpoint = data.ns_connection.redis.outputs.db_endpoint
  host     = split(":", local.endpoint)[0]
  port     = split(":", local.endpoint)[1]
}
