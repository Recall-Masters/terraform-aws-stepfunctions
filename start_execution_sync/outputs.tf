output name {
  value = var.name
}


output step {
  value = local.step
}


output step_object {
  value = {
    (var.name) : local.step
  }
}
