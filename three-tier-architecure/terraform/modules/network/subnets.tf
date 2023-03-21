# PUBLIC SUBNETS

resource "aws_subnet" "pub_subnet_b" {
  vpc_id                  = "${aws_vpc.main_vpc.id}"
  cidr_block              = "${var.pub_subnet_b_cidr}"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

}

resource "aws_subnet" "pub_subnet_c" {
  vpc_id                  = "${aws_vpc.main_vpc.id}"
  cidr_block              = "${var.pub_subnet_c_cidr}"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

}

# PUBLIC ROUTE TABLES

resource "aws_route_table" "pub_route_table" {
  vpc_id = "${aws_vpc.main_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.igw.id}"
  }

}

resource "aws_route_table_association" "public_b" {
  subnet_id      = "${aws_subnet.pub_subnet_b.id}"
  route_table_id = "${aws_route_table.pub_route_table.id}"
}

resource "aws_route_table_association" "public_c" {
  subnet_id      = "${aws_subnet.pub_subnet_c.id}"
  route_table_id = "${aws_route_table.pub_route_table.id}"
}

# PRIVATE SUBNETS

resource "aws_subnet" "prv_subnet_b" {
  vpc_id                  = "${aws_vpc.main_vpc.id}"
  cidr_block              = "${var.prv_subnet_b_cidr}"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = false

}

resource "aws_subnet" "prv_subnet_c" {
  vpc_id                  = "${aws_vpc.main_vpc.id}"
  cidr_block              = "${var.prv_subnet_c_cidr}"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = false

}


# PRIVATE ROUTE TABLES

resource "aws_route_table" "prv_route_table_b" {
  vpc_id = "${aws_vpc.main_vpc.id}"

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.nat_gw_b.id}"
  }

}

resource "aws_route_table_association" "private_b" {
  subnet_id      = "${aws_subnet.prv_subnet_b.id}"
  route_table_id = "${aws_route_table.prv_route_table_b.id}"
}

resource "aws_route_table" "private_route_table_c" {
  vpc_id = "${aws_vpc.main_vpc.id}"

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = "${aws_nat_gateway.nat_gw_c.id}"
  }

}

resource "aws_route_table_association" "private_c" {
  subnet_id      = "${aws_subnet.prv_subnet_c.id}"
  route_table_id = "${aws_route_table.private_route_table_c.id}"
}
