

provider "aws" {
  access_key = "${var.AWS_ACCESS_KEY_ID}"
  secret_key = "${var.AWS_SECRET_ACCESS_KEY}"
  region     = "us-east-1"
}
/*
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

resource "aws_network_interface" "foo" {
  subnet_id   = "${aws_subnet.bizware_subnet.id}"
  private_ips = ["172.16.10.100"]

  tags = {
    Name = "primary_network_interface"
  }
}

resource "aws_instance" "bizware-1" {
  ami           = "ami-22b9a343" 
  instance_type = "t2.micro"

  network_interface {
    network_interface_id = "${aws_network_interface.foo.id}"
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
}*/