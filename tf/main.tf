terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = "cointracker-379915"
  region  = "us-central1"
  zone    = "us-central1-a"
}
