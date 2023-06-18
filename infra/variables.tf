variable "project_id" {
  type        = string
  description = "The ID of the GCP project to use for provisioning resources."
  default     = ""
}

variable "region" {
  type        = string
  description = "The GCP region to use for provisioning resources."
  default     = "europe-north1"
}

variable "zone" {
  type        = string
  description = "The GCP zone to use for provisioning resources."
  default     = "europe-north1-a"
}

variable "credentials_file" {
  type        = string
  description = "The GCP key file that belongs to the 'terraform-sa' service account."
  default     = ""
}
