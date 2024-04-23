# network_creation.tf

provider "google" {
  project     = "hc-2b6b12a0d1a54455ab3af0925b7"
  region      = "us-central1"
}

resource "google_compute_network" "my_network" {
  name                    = "my-network"
  auto_create_subnetworks = true
}

# Output the network information
output "network_info" {
  value = google_compute_network.my_network.id
}
