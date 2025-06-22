variable "name" {
  description = "Nom du projet ou du module"
  type        = string
}

variable "vpc_id" {
  description = "ID du VPC auquel ce SG appartient"
  type        = string
}
