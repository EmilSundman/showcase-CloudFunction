terraform {
  backend "gcs" {
    bucket = "tfstate-cloud_function"
    prefix = "terraform/state"
    # credentials = "sa-terraform_key-file.json"
  }
}
