resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = "${var.prefix}-vpc"
  }
}

resource "aws_subnet" "subnet_1a" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_cidr
  availability_zone = "ap-northeast-1a"

  tags = {
    Name = "${var.prefix}-subnet-1a"
  }
}
