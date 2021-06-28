output step {
  value = {
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
  }
}

output name {
  value = var.name
}
