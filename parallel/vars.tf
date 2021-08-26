variable steps {
  description = "Steps to run in parallel."
}


variable name {
  description = "Name of the step."
  type = string
}


variable result_path {
  description = "Result path parameter."
  type = string
  default = "$"
}


variable additional_states {
  description = "Additional states data."
  default = {}
}
