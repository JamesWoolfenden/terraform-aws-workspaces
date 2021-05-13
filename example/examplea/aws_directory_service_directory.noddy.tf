resource "aws_directory_service_directory" "noddy" {
  name     = "corp.notexample.com"
  password = random_string.password.result
  size     = "Small"

  vpc_settings {
    vpc_id     = aws_vpc.main.id
    subnet_ids = [aws_subnet.manc.id, aws_subnet.london.id]
  }

  tags = var.common_tags
}

resource "random_string" "password" {
  length  = 16
  special = true
}

resource "aws_vpc" "main" {
  # checkov:skip=CKV2_AWS_1: test resource
  # checkov:skip=CKV2_AWS_11: test resource
  # checkov:skip=CKV2_AWS_12: test resource
  cidr_block = "10.0.0.0/16"
  tags       = var.common_tags
}

resource "aws_subnet" "london" {
  vpc_id            = aws_vpc.main.id
  availability_zone = "eu-west-2a"
  cidr_block        = "10.0.1.0/24"
  tags              = var.common_tags
}

resource "aws_subnet" "manc" {
  vpc_id            = aws_vpc.main.id
  availability_zone = "eu-west-2b"
  cidr_block        = "10.0.2.0/24"
  tags              = var.common_tags
}
