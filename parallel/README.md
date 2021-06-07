# Parallel

This module accepts a list of steps modules (say, `sqs_async` or `chain` or `parallel`)
and returns the document ready to be used as a step module for `chain` or another `parallel`.
