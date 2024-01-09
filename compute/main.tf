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