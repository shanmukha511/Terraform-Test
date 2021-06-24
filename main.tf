resource "google_compute_firewall" "default" {
  name    = "test-firewall"
  network = "default"

  allow {
    protocol = "icmp"
  }
}
