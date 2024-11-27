variable "project_id" {
  description = "ID do projeto no Google Cloud"
  type        = string
}

variable "members" {
  description = "Lista de membros que podem acessar o Cloud Run"
  type        = list(string)
  default     = ["allUsers"] # Valor padrão: público
}