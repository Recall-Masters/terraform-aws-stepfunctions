output retry {
  value = {
    ErrorEquals: var.error_equals
    IntervalSeconds: var.interval_seconds
    MaxAttempts: var.max_attempts
    BackoffRate: var.backoff_rate
  }
}
