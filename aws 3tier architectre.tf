terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_vpc" "3tier_architecture" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "3tier_architecture"
  }
}

# webtier public  subnet 1 
resource "aws_subnet" "webtier" {
  vpc_id     = aws_vpc.3tier_architecture.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1"

  tags = {
    Name = "webtier"
  }
}

# webtier public  subnet 2
resource "aws_subnet" "webtier1" {
  vpc_id     = aws_vpc.3tier_architecture.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-2"

  tags = {
    Name = "webtier"
  }
}


# applicationtier private  subnet 1
resource "aws_subnet" "apptier" {
  vpc_id     = aws_vpc.3tier_architecture.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1"

  tags = {
    Name = "apptier"
  }
}

# applicationtier private subnet 2
resource "aws_subnet" "apptier1" {
  vpc_id     = aws_vpc.3tier_architecture.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-2"

  tags = {
    Name = "apptier"
  }
}


# database private  subnet 1
resource "aws_subnet" "dbtier" {
  vpc_id     = aws_vpc.3tier_architecture.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-1"

  tags = {
    Name = "dbtier"
  }
}

# database private  subnet 2
resource "aws_subnet" "dbtier1" {
  vpc_id     = aws_vpc.3tier_architecture.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-south-2"

  tags = {
    Name = "dbtier"
  }
}

# internet gate way 
resource "aws_internet_gateway" "3tier_architecture" {
  vpc_id = aws_vpc.3tier_architecture.id

  tags = {
    Name = "3tier-architecture-IGW"
  }
}

# route table 
resource "aws_route_table" "webrtpub" {
  vpc_id = aws_vpc.3tier_architecture.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.3tier_architecture.id
  }

  tags = {
    Name = "webrt"
  }
}

resource "aws_route_table_association" "webrtpub" {
  subnet_id      = aws_subnet.webtier.id
  route_table_id = aws_route_table.webrtpub.id
}

resource "aws_route_table_association" "webrtpub1" {
  gateway_id     = aws_internet_gateway.webtier1.id
  route_table_id = aws_route_table.webrtpub.id
} 