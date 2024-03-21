data "ns_connection" "redis" {
  name     = "redis"
  contract = "datastore/gcp/redis:*"
}

locals {
  db_endpoint  = data.ns_connection.redis.outputs.db_endpoint
  db_subdomain = split(":", local.db_endpoint)[0]
  db_port      = split(":", local.db_endpoint)[1]
  db_protocol  = data.ns_connection.redis.outputs.db_protocol
}
