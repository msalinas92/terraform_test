resource "aws_vpc" "bizware_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "tf-example-bizware"
  }
}

resource "aws_subnet" "bizware_subnet" {
  vpc_id            = "${aws_vpc.bizware_vpc.id}"
  cidr_block        = "172.16.10.0/24"
  availability_zone = "us-east-1a"

  tags = {
    Name = "tf-example-bizware"
  }
}