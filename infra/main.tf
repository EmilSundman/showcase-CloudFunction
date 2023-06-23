# Places all of the resources in the same main module
# Works well for small projects such as this one

# Terraform module for the GCP project

# Create Service Account for the application and cloud run 
resource "google_service_account" "app" {
  account_id   = "sa-app"
  display_name = "sa-app"
}

# Assign role to Service Account
resource "google_project_iam_member" "app" {
  project = var.project_id
  role    = "roles/run.admin"
  member  = "serviceAccount:${google_service_account.app.email}"
}

# Define artifact registry 
resource "google_artifact_registry_repository" "app" {
  repository_id = "app-repo"
  location      = var.region
  format        = "DOCKER"
}

# resource "google_cloud_run_v2_job" "cloud-run" {
#   name         = "cloud-run"
#   location     = var.region
#   launch_stage = "BETA"

#   template {
#     template {
#       containers {
#         image = "europe-north1-docker.pkg.dev/showcase-cloudfunction/app-repo/cloud-app:latest"

#       }
#       max_retries = 0
#       timeout     = "1800s"
#     }
#   }
# }
