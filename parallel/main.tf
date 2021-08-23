locals {
  branches = [for mod in var.steps: {
    StartAt = mod.step != null ? mod.name : mod.start_at
    States = merge(
      jsondecode(mod.step != null ? jsonencode({
        (mod.name): merge(
          mod.step,
          { End: true }
        )
      }) : jsonencode(mod.states)),
      var.additional_states
    )
  }]
}
