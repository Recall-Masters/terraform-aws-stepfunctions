locals {
  maybe_retries = var.retry_policies == null ? {} : {
    retry: [for module in var.retry_policies: module.retry]
  }
}
