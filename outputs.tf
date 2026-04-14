locals {
  // user pass authorization is not supported yet
  user_pass_encoded = ""
}

output "env" {
  value = [
    {
      name  = "REDIS_HOST"
      value = local.host
    },
    {
      name  = "REDIS_PORT"
      value = local.port
    },
    {
      name  = "REDIS_ADDR"
      value = local.endpoint
    },
    {
      name  = "REDIS_TLS_ENABLED"
      value = local.protocol == "rediss"
    },
    {
      name  = "REDIS_USERNAME"
      value = ""
    }
  ]
}

output "secrets" {
  value = [
    {
      name  = "REDIS_PASSWORD"
      value = ""
    },
    {
      name  = "REDIS_URL"
      value = "${local.protocol}://${local.user_pass_encoded}${local.endpoint}/0"
    }
  ]
}
