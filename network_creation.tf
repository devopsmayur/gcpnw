# network_creation.tf

provider "google" {
  project     = "hc-7a11eea9ad4042afac2c2451cbc"
  region      = "us-central1"
}

resource "google_compute_network" "my_network" {
  name                    = "mayur1"
  auto_create_subnetworks = true
}

# Output the network information
output "network_info" {
  value = google_compute_network.my_network.id
}
