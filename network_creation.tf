# network_creation.tf

provider "google" {
  project     = "hc-df8747d708364ef49b391a87032"
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
