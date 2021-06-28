locals {
  maybe_retries = var.retry_policies == null ? {} : {
    retry: [for module in var.retry_policies: module.retry]
  }

  maybe_catches = var.catch_policies == null ? {} : {
    catch: [for module in var.catch_policies: module.catch]
  }
}
