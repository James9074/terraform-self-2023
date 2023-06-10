provider "google" {
  project     = "terraform-self-2023"
  region      = "us-east1"
  zone        = "us-east1-b"
  credentials = var.gcp_credentials
}

resource "google_storage_bucket" "test_bucket" {
  name          = "self-2023-tf-cloud-test-bucket"
  location      = "US"
  force_destroy = true
}


resource "google_compute_instance" "amazing_virtual_machine" {
  count        = 1
  name         = "example-vm-instance"
  machine_type = "f1-micro"
  zone         = "us-east1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"
  }
}

variable "gcp_credentials" {
  type      = string
  sensitive = true
}
