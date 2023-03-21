variable "vpc_cidr" {
  description = "The cidr range for vpc"
  type        = string
}

variable "pub_subnet_b_cidr" {
  description = "The cidr range for public subnet b"
  type        = string
}

variable "pub_subnet_c_cidr" {
  description = "The cidr range for public subnet c"
  type        = string
}

variable "prv_subnet_b_cidr" {
  description = "The cidr range for private subnet b"
  type        = string
}

variable "prv_subnet_c_cidr" {
  description = "The cidr range for private subnet c"
  type        = string
}

