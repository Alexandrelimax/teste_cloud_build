resource "google_artifact_registry_repository" "docker_repo" {
  name        = var.name
  repository_id = var.name # O ID do repositório geralmente é o mesmo do nome
  format      = "DOCKER"
  location    = var.location
  description = var.description
}