resource "aws_dynamodb_table" "davids-dynamodb-table" {
  name           = var.name
  billing_mode   = "PROVISIONED" # Direct assignment for debugging
  read_capacity  = var.read_capacity
  write_capacity = var.write_capacity
  hash_key       = var.hash_key
  range_key      = var.range_key

  attribute {
    name = var.attribute_name1
    type = "S"
  }

  attribute {
    name = var.attribute_name2
    type = "S"
  }

  attribute {
    name = var.attribute_name3
    type = "N"
  }

  ttl {
    attribute_name = var.ttl_attribute
    enabled        = var.enabled
  }

  global_secondary_index {
    name               = var.gsi["name"]
    hash_key           = var.gsi["hash_key"]
    range_key          = var.gsi["range_key"]
    write_capacity     = var.gsi["write_capacity"]
    read_capacity      = var.gsi["read_capacity"]
    projection_type    = var.gsi["projection_type"]
    non_key_attributes = var.gsi["non_key_attributes"]
  }

  tags = {
    Name        = "dynamodb-table-1"
    Environment = "production"
  }
}

