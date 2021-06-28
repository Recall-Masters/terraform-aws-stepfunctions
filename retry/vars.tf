variable error_equals {
  description = "A non-empty array of strings that match error names. When a state reports an error, Step Functions scans through the retriers. When the error name appears in this array, it implements the retry policy described in this retrier."
  default = null
  type = list(string)
}


variable interval_seconds {
  description = "An integer that represents the number of seconds before the first retry attempt (1 by default)."
  type = number
  default = 1
}


variable max_attempts {
  description = "A positive integer that represents the maximum number of retry attempts (3 by default). If the error recurs more times than specified, retries cease and normal error handling resumes. A value of 0 specifies that the error or errors are never retried."
  type = number
  default = 3
}


variable backoff_rate {
  description = "The multiplier by which the retry interval increases during each attempt (2.0 by default)."
  type = number
  default = 2.0
}
