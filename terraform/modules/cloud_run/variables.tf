variable "name" {
  description = "Nome do serviço Cloud Run"
  type        = string
}

variable "location" {
  description = "Localização do Cloud Run"
  type        = string
  default     = "us-central1"
}

variable "image" {
  description = "Imagem Docker para o Cloud Run"
  type        = string
}