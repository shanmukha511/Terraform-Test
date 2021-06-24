terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.73.0"
    }
  }
}

provider "google" {
  # Configuration options
  project = "firm-region-314807"
  #access_token = var.access_token
}
resource "google_compute_firewall" "default" {
  name    = "test-firewall"
  network = "default"

  allow {
    protocol = "icmp"
  }
}
