variable error_equals {
  description = "A non-empty array of strings that match error names, specified exactly as they are with the retrier field of the same name."
  default = ["States.ALL"]
  type = list(string)
}


variable next {
  description = "A string that must exactly match one of the state machine's state names."
  type = string
}

variable result_path {
  description = "ResultPath"
  default = "$"
}
