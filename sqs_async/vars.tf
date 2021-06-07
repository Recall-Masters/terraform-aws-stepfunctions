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
