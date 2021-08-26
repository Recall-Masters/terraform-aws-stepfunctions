output step {
  value = {
    Type = "Fail"
  }
}


output name {
  value = var.name
}


output step_object {
  value = {
    (var.name): {
      Type = "Fail"
    }
  }
}
