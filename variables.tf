# variables.tf: Define as variáveis de configuração, como região e tipo de instância, para que o código seja reutilizável.

variable "aws_region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "key_name" {
  description = "Nome do par de chaves para acesso SSH"
  type        = string
  default     = "meu-par-de-chaves"
}

