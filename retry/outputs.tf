output retry {
  value = merge(
    {
      IntervalSeconds: var.interval_seconds
      MaxAttempts: var.max_attempts
      BackoffRate: var.backoff_rate
    },
    local.maybe_error_equals,
  )
}
