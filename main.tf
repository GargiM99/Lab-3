#Creating the VPCs

#VPC Blue
resource "aws_vpc" "VPC-blue_Lab3" {
  cidr_block = "100.64.0.0/16"
  
  tags = {
    Name = "VPC-blue_Lab3"
  }
}

#VPC Green
resource "aws_vpc" "VPC-green_Lab3" {
  cidr_block = "192.168.0.0/16"
  
  tags = {
    Name = "VPC-green_Lab3"
  }
}


#Creating the Internet Gateways

#IGW Blue
resource "aws_internet_gateway" "IGW-blue_Lab3" {
  vpc_id = aws_vpc.VPC-blue_Lab3.id

  tags = {
    Name = "IGW-blue_Lab3"
  }
}

#IGW Green
resource "aws_internet_gateway" "IGW-green_Lab3" {
  vpc_id = aws_vpc.VPC-green_Lab3.id

  tags = {
    Name = "IGW-green_Lab3"
  }
}


#Creating the public subnets

#SN Blue
resource "aws_subnet" "SN-blue-1" {
  vpc_id            = aws_vpc.VPC-blue_Lab3.id
  cidr_block        = "100.64.1.0/24"
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "SN-blue-2" {
  vpc_id            = aws_vpc.VPC-blue_Lab3.id
  cidr_block        = "100.64.2.0/24"
  availability_zone = "us-east-1b"
}

resource "aws_subnet" "SN-blue-3" {
  vpc_id            = aws_vpc.VPC-blue_Lab3.id
  cidr_block        = "100.64.3.0/24"
  availability_zone = "us-east-1c"
}

#SN Green
resource "aws_subnet" "SN-green-1" {
  vpc_id            = aws_vpc.VPC-green_Lab3.id
  cidr_block        = "192.168.1.0/24"
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "SN-green-2" {
  vpc_id            = aws_vpc.VPC-green_Lab3.id
  cidr_block        = "192.168.2.0/24"
  availability_zone = "us-east-1b"
}

resource "aws_subnet" "SN-green-3" {
  vpc_id            = aws_vpc.VPC-green_Lab3.id
  cidr_block        = "192.168.3.0/24"
  availability_zone = "us-east-1c"
}