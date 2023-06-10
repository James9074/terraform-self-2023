provider "google" {
  project     = "terraform-self-2023"
  region      = "us-east1"
  zone        = "us-east1-b"
  credentials = vars.GOOGLE_CREDENTIALS
}

variable "GOOGLE_CREDENTIALS" {
  type = string
}
