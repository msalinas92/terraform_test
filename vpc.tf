resource "aws_vpc" "bizware_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "tf-example-bizware"
  }
}