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

