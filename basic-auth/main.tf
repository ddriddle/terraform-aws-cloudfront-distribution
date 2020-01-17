# Autogenerated by main.m4
#
# https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/globaltables_reqs_bestpractices.html

resource "aws_dynamodb_global_table" "default" {
  depends_on = [
    aws_dynamodb_table.ap-northeast-1,
    aws_dynamodb_table.ap-northeast-2,
    aws_dynamodb_table.ap-south-1,
    aws_dynamodb_table.ap-southeast-1,
    aws_dynamodb_table.ap-southeast-2,
    aws_dynamodb_table.ca-central-1,
    aws_dynamodb_table.eu-central-1,
    aws_dynamodb_table.eu-north-1,
    aws_dynamodb_table.eu-west-1,
    aws_dynamodb_table.eu-west-2,
    aws_dynamodb_table.eu-west-3,
    aws_dynamodb_table.sa-east-1,
    aws_dynamodb_table.us-east-1,
    aws_dynamodb_table.us-east-2,
    aws_dynamodb_table.us-west-1,
    aws_dynamodb_table.us-west-2,
  ]

  # FIXME: Don't hardcode us-east-1!# 
  provider = aws.us-east-1

  name = var.name

  dynamic "replica" {
    for_each = toset(var.regions)

    content {
      region_name = replica.value
    }
  }
}
