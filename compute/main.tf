terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {

  project = "<Set Project_id>"
  region  = "asia-northeast1"
  zone    = "asia-northeast1-b"
}

resource "google_compute_instance" "<set_name>" {
  name         = "<set_name>"
  machine_type = "<machine-type>"
  tags         = ["http-server","https-server"]
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  network_interface {
    network = "default"
    access_config {
      }
    }
  }