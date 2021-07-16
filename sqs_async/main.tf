locals {
  maybe_retries = var.retry_policies == null ? {} : {
    Retry: [for module in var.retry_policies: module.retry]
  }

  maybe_catches = var.catch_policies == null ? {} : {
    Catch: [for module in var.catch_policies: module.catch]
  }

  heartbeat_seconds = var.heartbeat_seconds == null ? {} : {
    HeartbeatSeconds: var.heartbeat_seconds
  }
}
