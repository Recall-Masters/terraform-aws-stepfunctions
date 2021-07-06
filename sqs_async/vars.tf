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
  default = null
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


variable name_prefix {
  description = "Prefix of the name of the step."
  type = string
  default = null
}


variable argument_name {
  description = "Name of the argument receiving the values of the list."
  type = string
  default = null
}


variable over_list {
  description = "List of values to create a list of steps."
  type = list(string)
  default = null
}
