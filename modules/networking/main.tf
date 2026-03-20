resource "aws_vpc" "cust_vpc" {
    cidr_block = var.cidr_block

    tags = {
        Name = "eks-vpc"
    }
}

resource "aws_subnet" "public" {
    count = length(var.public_subnets)

    vpc_id = aws_vpc.cust_vpc.id
    cidr_block = var.public_subnets[count.index]
    availability_zone = "${var.region}a"
    map_public_ip_on_launch = true
}

resource "aws_subnet" "private" {
    count = length(var.private_subnets)

    vpc_id = aws_vpc.cust_vpc.id
    cidr_block = var.private_subnets[count.index]
    availability_zone = "${var.region}a"
  
}
