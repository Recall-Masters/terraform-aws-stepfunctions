locals {
  branches = [for module in var.steps: {
    StartAt = module.name
    States = jsondecode(module.step != null ? jsonencode({
      (module.name): merge(
        module.step,
        { End: true }
      )
    }) : jsonencode(module.states))
  }]
}
