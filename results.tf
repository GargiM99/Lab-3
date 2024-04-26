#VPC Blue
output "VPC-blue_id_Lab3" {
  value = aws_vpc.VPC-blue_Lab3.id
}

output "blue-1_id" {
  value = aws_subnet.SN-blue-1.id
}

output "blue-2_id" {
  value = aws_subnet.SN-blue-2.id
}

output "blue-3_id" {
  value = aws_subnet.SN-blue-3.id
}

#VPC Green
output "VPC-green_id_Lab3" {
  value = aws_vpc.VPC-green_Lab3.id
}

output "green-1_id" {
  value = aws_subnet.SN-green-1.id
}

output "green-2_id" {
  value = aws_subnet.SN-green-2.id
}

output "green-3_id" {
  value = aws_subnet.SN-green-3.id
}