variable name {
  description = "Name of the step."
  type = string
}

variable state_machine_arn {
  type = string
  description = "ARN of the state machine to call."
}


variable input {
  description = "Input object to submit to the State Machine."
  default = null
}

variable result_path {
  description = "ResultPath"
  default = "$"
}


variable comment {
  description = "Comment about the integration."
  default = ""
  type = string
}


variable next {
  description = "Name of the next state."
  default = null
}


variable end {
  description = "If this is an end state."
  default = null
}
