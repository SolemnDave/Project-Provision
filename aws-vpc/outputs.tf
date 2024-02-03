output "display_vpc_name" {
  value = "The VPC '${aws_vpc.testing.tags["Name"]}' has been created !"
}
