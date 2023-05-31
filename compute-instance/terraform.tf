terraform {
  required_version = "~> 1.3"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.40"
    }
  }
  backend "gcs" {
    bucket = "<YOUR-BUCKET-NAMR>"
    prefix = "compute-instance"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}
