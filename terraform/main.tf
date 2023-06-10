provider "google" {
  project     = "terraform-self-2023"
  region      = "us-east1"
  zone        = "us-east1-b"
  credentials = var.gcp_credentials
}

variable "gcp_credentials" {
  type      = string
  sensitive = true
}
