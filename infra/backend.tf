terraform {
  backend "gcs" {
    bucket = "tfstate-cloud_function"
    prefix = "terraform/state"
  }
}
