output step {
  value = {
    Type       = "Parallel"
    ResultPath = var.result_path
    Branches = local.branches
  }
}

output name {
  value = var.name
}
