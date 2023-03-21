output "main_vpc" {
  description = "The main vpc id"
  value       = "${aws_vpc.main_vpc.id}"
}

output "public_subnet_b" {
  description = "The public subnet b id"
  value       = "${aws_subnet.pub_subnet_b.id}"
}

output "public_subnet_c" {
  description = "The public subnet c id"
  value       = "${aws_subnet.pub_subnet_c.id}"
}

output "private_subnet_b" {
  description = "The private subnet b id"
  value       = "${aws_subnet.prv_subnet_b.id}"
}

output "private_subnet_c" {
  description = "The private subnet c id"
  value       = "${aws_subnet.prv_subnet_c.id}"
}


output "public_sg" {
  description = "The public security group id"
  value       = "${aws_security_group.pub_sg.id}"
}

output "private_sg" {
  description = "The private security group id"
  value       = "${aws_security_group.prv_sg.id}"
}
