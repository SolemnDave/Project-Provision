variable "allocated_storage" {
    type          = number
    description   = "The allocated storage size for the RDS instance. Max is 10 for AWS Free Tier"
}

variable "db_name" {
    type         = string
    description  = "Declaring the name of my database."
}

variable "engine" {
    type         = string
    description  = "Choosing which database engine I want to use. You can choose between mysql, postgres, oracle, mariadb, and sqlserver"
}

variable "engine_version" {
    type         = string
    description  = "Choosing the engine of the specified database engine you chose"
}

variable "instance_class" {
    type         = string
    description  = "Choosing the instance class for the database instance."
}

variable "username" {
    type         = string
    description  = "Deciding on the username"
}

variable "password" {
    type         = string
    description  = "Deciding on the password"
}

variable "parameter_group_name" {
    type         = string
    description  = "This specifies the name of the parameter group to associate with the database instance"
}

variable "skip_final_snapshot" {
  type        = bool
  description = "Determines whether a final DB snapshot is created before the DB instance is deleted"
}
