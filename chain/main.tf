locals {
  step_names = [for module in var.steps: module.name]
  next_step_names = concat(
    slice(
      local.step_names,
      1,
      length(local.step_names),
    ),
    [null],
  )
  step_to_next_step = zipmap(local.step_names, local.next_step_names)

  linked_steps = {for module in var.steps: module.name => merge(
    module.step,
    local.step_to_next_step[module.name] == null ? {
      End: true
    } : {
      Next: local.step_to_next_step[module.name]
    }
  )}
}
