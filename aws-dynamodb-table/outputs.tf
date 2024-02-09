output "DisplayDynamoDbTableName" {
    value = "${aws_dynamodb_table.davids-dynamodb-table.name} has been made!"
}
