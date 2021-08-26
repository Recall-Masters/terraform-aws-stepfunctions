output step {
  value = {
    Type = "Succeed"
  }
}


output name {
  value = var.name
}


output step_object {
  value = {
    (var.name): {
      Type = "Succeed"
    }
  }
}
