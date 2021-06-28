locals {
  branches = [for module in var.steps: {
    StartAt = module.name
    States = {
      (module.name): merge(
        module.step,
        { End: true }
      )
    }
  }]
}

