variable "ami_id" {
  description = "ID da AMI que será usada"
  type        = string
}

variable "org_name" {
  description = "nome do bucket"
  type        = string
}

variable "s3_tags" {
  type = map(string)
  default = {}
  description = "Tags do S3"
}