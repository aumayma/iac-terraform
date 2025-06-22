variable "name" {
  description = "Nom du projet"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block du VPC"
  type        = string
}

variable "subnet_cidr" {
  description = "CIDR block du subnet public"
  type        = string
}

variable "az" {
  description = "Availability Zone"
  type        = string
}
