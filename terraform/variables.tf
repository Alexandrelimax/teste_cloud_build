variable "project_id" {
  description = "ID do projeto no Google Cloud"
  type        = string
}

variable "name" {
  description = "ID do projeto no Google Cloud"
  type        = string
}

variable "location_repository" {
  description = "ID do projeto no Google Cloud"
  type        = string
}

variable "region" {
  description = "Região para os recursos do Google Cloud"
  type        = string
  default     = "us-central1"
}

variable "artifact_registry_name" {
  description = "Nome do repositório Artifact Registry"
  type        = string
  default     = "my-fastapi-repo"
}

variable "cloud_run_service_name" {
  description = "Nome do serviço Cloud Run"
  type        = string
  default     = "my-fastapi-app"
}

variable "iam_members" {
  description = "Lista de membros com permissão para invocar o serviço Cloud Run"
  type        = list(string)
  default     = ["allUsers"]
}