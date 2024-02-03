variable "cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "instance_tenancy" {
    type        = string
    description = "Choosing the instance tenancy, you can choose between default, dedicated, and host"
}

