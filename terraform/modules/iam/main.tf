resource "google_project_iam_binding" "cloud_run_invoker" {
  project = var.project_id
  role    = "roles/run.invoker"

  members = [
    "allUsers", # Acesso público a todos
  ]
}