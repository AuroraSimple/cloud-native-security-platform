data "aws_vpc" "existing" {
  id = "vpc-0284032576f7c3772"
}

data "aws_subnet" "public_2a" {
  id = "subnet-0bed71c80396ae685"
}

data "aws_subnet" "public_2c" {
  id = "subnet-0e08179c48794b2c3"
}

data "aws_subnet" "private_2a" {
  id = "subnet-0dc44fee239421b4d"
}

data "aws_subnet" "private_2c" {
  id = "subnet-08ee380c1f03e2ba0"
}

locals {
  public_subnet_ids = [
    data.aws_subnet.public_2a.id,
    data.aws_subnet.public_2c.id,
  ]

  private_subnet_ids = [
    data.aws_subnet.private_2a.id,
    data.aws_subnet.private_2c.id,
  ]
}
