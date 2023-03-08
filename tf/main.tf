terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = "${var.project_id}"
  region  = "${var.region}"
  zone    = "${var.zone}"
}


locals {
  project_apis = [
    "serviceusage.googleapis.com",
    "iam.googleapis.com",
    "cloudbuild.googleapis.com",
    "pubsub.googleapis.com",
    "logging.googleapis.com",
    "artifactregistry.googleapis.com",
    "run.googleapis.com",
    "storage-component.googleapis.com",
    "containerregistry.googleapis.com",
  ]
}


resource "google_project_service" "enabled_apis" {
  project  = var.project_id
  for_each = toset(local.project_apis)
  service  = each.key

  disable_on_destroy = false
}

