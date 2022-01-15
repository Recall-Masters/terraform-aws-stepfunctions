locals {
  step = {
    Type: "Task"
    Resource: "arn:aws:states:::states:startExecution.sync:2"
    Parameters: {
      StateMachineArn: var.state_machine_arn
      Input: merge(
        local.maybe_input,
        {
          Comment: var.comment
          "AWS_STEP_FUNCTIONS_STARTED_BY_EXECUTION_ID.$": "$$.Execution.Id"
        }
      )
    }

    ResultPath: var.result_path
  }

  maybe_input = var.input == null ? {} : {
    Input: var.input
  }
}
