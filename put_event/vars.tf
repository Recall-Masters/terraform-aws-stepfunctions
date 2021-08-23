variable name {
  description = "Name of the step."
  type = string
}


variable result_path {
  description = "Result path parameter."
  type = string
  default = null
}


variable detail_type {
  description = "Detail type."
  type = string
}


variable detail {
  description = "Detail."
}


variable event_bus {
  description = "EventBus name."
  default = "default"
}


variable event_source {
  description = "Event source."
  type = string
}
