output name {
  value = var.name
}

output step {
  value = {
    Type: "Task"
    Resource: "arn:aws:states:::states:startExecution.sync:2"
    Parameters: {
      StateMachineArn: var.state_machine_arn
      Input: merge(
        var.input,
        {
          Comment: var.comment
          "AWS_STEP_FUNCTIONS_STARTED_BY_EXECUTION_ID.$": "$$.Execution.Id"
        }
      )
    }

    ResultPath: var.result_path
  }
}
