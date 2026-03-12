resource aws_vpc "roboshop" {
 cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  enable_dns_hostnames = true
  tags = merge (
    var.vpc_tags { 
        Name = "{$var.project-$var.environment}"
    } 
    , local.common_tags)
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.roboshop.id

  tags = {
    Name = "roboshop"
  }
}

resource "aws_subnet" "roboshop" {
  vpc_id     = aws_vpc.roboshop.id
  cidr_block = "10.0.1.0/24"
  availability_zone = 
  tags = {
    Name = "Frontend-roboshop-public"
  }
}

resource "aws_subnet" "roboshop" {
  vpc_id     = aws_vpc.roboshop.id
  cidr_block = "10.0.2.0/24"
  availability_zone =

  tags = {
    Name = "Frontend-roboshop-private"
  }
}
resource aws_route_table {

}
resource aws_nat {

}
resource aws_elastic_ip {

}