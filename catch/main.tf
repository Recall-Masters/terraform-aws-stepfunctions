locals {
  maybe_error_equals = var.error_equals == null ? {} : {
    ErrorEquals: var.error_equals
  }
}
