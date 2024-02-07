resource "aws_apigatewayv2_api" "davids_example_api" {
  name                       = var.name
  protocol_type              = var.protocol_type
  # route_selection_expression = "$request.body.action"
}


