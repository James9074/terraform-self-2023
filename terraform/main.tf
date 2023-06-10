provider "google" {
  project     = "terraform-self-2023"
  region      = "us-east1"
  zone        = "us-east1-b"
  credentials = vars.gcp_credentials
}

resource "google_storage_bucket" "example_gcs_bucket" {
  name          = "self-2023-test-bucket"
  location      = "US"
  force_destroy = true
}

variable "gcp_credentials" {
  type      = string
  sensitive = true
}
