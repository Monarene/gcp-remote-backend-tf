terraform {
required_version = ">= 1.3.0, < 2.0.0"
 /* backend "gcs" {
    bucket = "<YOUR-BUCKET-NAMR>""
    prefix = "global-resources/"
  } */

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.40"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
  zone    = var.zone
}
