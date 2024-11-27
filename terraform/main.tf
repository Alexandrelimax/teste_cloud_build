provider "google" {
  project = var.project_id
  region  = var.region
}

module "artifact_registry" {
  source      = "./artifact_registry" # Diretório do módulo Artifact Registry
  name        = var.name     # Nome do repositório
  location    = var.location_repository            # Região (us-central1, etc.)
  description = "Repositório para armazenar imagens Docker" # Descrição
}

module "cloud_run" {
  source   = "./cloud_run"
  name     = "my-fastapi-app"
  location = var.region
  image    = "gcr.io/${var.project_id}/my-fastapi-app:latest"
}

module "iam" {
  source     = "./iam"
  project_id = var.project_id
  members    = ["allUsers"] # Permissão pública
}

# module "iam" {
#   source      = "./iam"
#   project_id  = var.project_id
#   members     = [
#     "user:usuario1@gmail.com",
#     "group:minha-equipe@googlegroups.com"
#   ]
# }