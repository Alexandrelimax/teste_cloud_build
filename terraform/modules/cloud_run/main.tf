resource "google_cloud_run_service" "fastapi_service" {
  name     = var.name
  location = var.location

  template {
    spec {
      containers {
        image = var.image
      }
    }
  }

  metadata {
    annotations = {
      "run.googleapis.com/ingress" = "all"
    }
  }
}

output "service_name" {
  value = google_cloud_run_service.fastapi_service.name
}