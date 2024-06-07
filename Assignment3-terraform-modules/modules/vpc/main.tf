resource "aws_vpc" "amit_assign3_vpc" {
    cidr_block = var.vpc_cidr
    
    tags = {
        Name = "amit-assign3-vpc"
    }
}

resource "aws_subnet" "amit_assign3_subnet" {
    count = length(var.subnet_cidrs)
    vpc_id = aws_vpc.amit_assign3_vpc.id
    cidr_block = element(var.subnet_cidrs, count.index)
    map_public_ip_on_launch = true
    
    tags = {
        Name = "amit-assign3-subnet-${count.index}"
    }
}

resource "aws_internet_gateway" "amit_assign3_igw" {
    vpc_id = aws_vpc.amit_assign3_vpc.id

    tags = {
        Name = "amit-assign3-igw"
    }
}

resource "aws_route_table" "amit_assign3_rt" {
    vpc_id = aws_vpc.amit_assign3_vpc.id
    
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.amit_assign3_igw.id
    }

    tags = {
        Name = "amit-assign3-rt"
    }
}

resource "aws_route_table_association" "amit_assign3_rta" {
    count = length(var.subnet_cidrs)
    subnet_id = element(aws_subnet.amit_assign3_subnet[*].id, count.index)
    route_table_id = aws_route_table.amit_assign3_rt.id
}
