locals {
  step = {
    Type    = "Choice"
    Choices = var.choices
    Default = var.default
  }
}
