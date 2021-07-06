output step {
  value = merge(
    {
      # https://docs.aws.amazon.com/step-functions/latest/dg/connect-sqs.html
      Type = "Task"
      Resource = "arn:aws:states:::sqs:sendMessage.waitForTaskToken"
      ResultPath = var.result_path
      Parameters = {
        QueueUrl = var.queue_url
        "MessageBody" = merge(
          var.message,
          {
            "state_machine_token.$": "$$.Task.Token"
          }
        )
      }
    },
    local.maybe_retries,
    local.maybe_catches,
  )
}

output name {
  value = var.name
}


output steps {
  value = [for row in var.over_list: {
    step = merge(
      {
        # https://docs.aws.amazon.com/step-functions/latest/dg/connect-sqs.html
        Type = "Task"
        Resource = "arn:aws:states:::sqs:sendMessage.waitForTaskToken"
        ResultPath = var.result_path
        Parameters = {
          QueueUrl = var.queue_url
          "MessageBody" = {
            "query": var.message.query,
            "arguments": merge(
              var.message.arguments,
              {
                (var.argument_name): row
              }
            )
            "state_machine_token.$": "$$.Task.Token"
          }
        }
      },
      local.maybe_retries,
      local.maybe_catches,
    )
    name = "${var.name_prefix}${row}"
  }]
}
