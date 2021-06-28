output catch {
  value = merge(
    {
      ResultPath: var.result_path
      Next: var.next
    },
    local.maybe_error_equals,
  )
}
