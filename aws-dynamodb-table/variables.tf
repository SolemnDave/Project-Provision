variable "name" {
  type        = string
  description = "Naming my DynamoDB table."
}

variable "billing_mode" {
  type        = string
  description = "Determines how you are billed for read and write throughput."
}

variable "read_capacity" {
  type        = number
  description = "This is the provisioned throughput settings for your table, set to 20 read units."
}

variable "write_capacity" {
    type        = number
    description = "This is the provisioned throughput settings for your table, set to 20 write units."
}

variable "hash_key" {
  type        = string
  description = "The primary key attribute of the table, which is UserId. Every item in the table is uniquely identified by this key."
}

variable "range_key" {
  type          = string
  description   = "A secondary key for more complex access patterns, GameTitle in this case. Together with the hash key, it forms a composite primary key."
}


variable "attribute_name1" {
    type        = string 
    description = "Declaring a string attribute for the tables primary key."
}

variable "attribute_name2" {
    type        = string 
    description = "Declaring another string attribute for the tables primary key."
}

variable "attribute_name3" {
    type        = string 
    description = "Declaring a number attribute name to store scores."
}

variable "ttl_attribute" {
    type          = string 
    description   = "This block is optional and allows you to define an attribute that DynamoDB checks to determine if an item is expired."
}
 

variable "enabled" {
  type        = bool
  description = "If enabled is set to false, TTL is disabled for the table."
}

variable "gsi" {
  type = object({
    name            = string
    hash_key        = string
    range_key       = string
    write_capacity  = number
    read_capacity   = number
    projection_type = string
    non_key_attributes = list(string)
  })
  description = "Declaring the configuration for the Global Secondary Index."
  default = {
    name              = "GameTitleIndex"
    hash_key          = "GameTitle"
    range_key         = "TopScore"
    write_capacity    = 10
    read_capacity     = 10
    projection_type   = "INCLUDE"
    non_key_attributes = ["UserId"]
  }
}
