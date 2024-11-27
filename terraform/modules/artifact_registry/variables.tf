variable "name" {
  description = "Nome do repositório no Artifact Registry"
  type        = string
}

variable "location" {
  description = "Região onde o Artifact Registry será criado"
  type        = string
  default     = "us-central1"
}

variable "description" {
  description = "Descrição do Artifact Registry"
  type        = string
  default     = "Repositório para armazenar imagens Docker"
}