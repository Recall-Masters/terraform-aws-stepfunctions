output step {
  value = {
    Type    = "Choice"
    Choices = var.choices
    Default = var.default
  }
}


output name {
  value = var.name
}


output step_object {
  value = {
    (var.name) : {
      Type    = "Choice"
      Choices = var.choices
      Default = var.default
    }
  }
}
