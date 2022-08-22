output "region" {
    value = var.region
}

output "project_name" {
    value = var.project_name
}

output "vpc-id" {
    value = aws_vpc.vpc.id
}

output "public-subnet-az1-id" {
    value = aws_subnet.public_subnet_az1.id
}

output "public-subnet-az2-id" {
    value = aws_subnet.public_subnet_az2.id
}

output "private_app_subnet_az1-id" {
    value = aws_subnet.private_app_subnet_az1.id
}

output "private_app_subnet_az2-id" {
    value = aws_subnet.private_app_subnet_az2.id
}

output "private_data_subnet_az1-id" {
    value = aws_subnet.private_data_subnet_az2.id
}

output "private_data_subnet_az2-id" {
    value = aws_subnet.private_data_subnet_az2.id
}

output "internet_gateway" {
    value = aws_internet_gateway.internet_gateway
}
