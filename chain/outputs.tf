output states {
  value = local.linked_steps
}


output name {
  value = var.name
}


output step {
  value = null
}


output start_at {
  value = local.step_names[0]
}
