variable queue_url {
  description = "SQS Queue URL."
  type = string
}


variable message {
  description = "The JSON document to send. Will be augmented with state_machine_token field."
}


variable name {
  description = "Name of the step."
  type = string
}


variable retry_policies {
  description = "List of retry policies. See `retry` module."
  default = null
}


variable catch_policies {
  description = "List of catch policies. See `catch` module."
  default = null
}


variable result_path {
  description = "Result path parameter."
  type = string
  default = "$"
}
