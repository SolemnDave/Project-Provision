resource "aws_vpc" "testing" {
  cidr_block       = var.cidr_block
  instance_tenancy = var.instance_tenancy

  tags = {
    Name = "testing"
  }
}
