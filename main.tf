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

resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-standard-2"
  zone         = "us-central1-a"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }


  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

}
