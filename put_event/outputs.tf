output step {
  value = merge(
    {
      Type = "Task"
      Resource = "arn:aws:states:::events:putEvents"
      ResultPath = var.result_path
      Parameters = {
        Entries = [
          {
            Detail = var.detail,
            DetailType = var.detail_type,
            EventBusName = var.event_bus,
            Source = var.event_source
          },
        ],
      }
    },
  )
}

output name {
  value = var.name
}
