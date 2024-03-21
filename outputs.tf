output "env" {
  value = [
    {
      name  = "REDIS_HOST",
      value = local.db_subdomain
    },
    {
      name  = "REDIS_PORT"
      value = local.db_port
    },
    {
      name  = "REDIS_URL"
      value = "${local.db_protocol}://${local.db_endpoint}/0"
    }
  ]
}
