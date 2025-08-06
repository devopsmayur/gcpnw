# network_creation.tf

provider "google" {
  project     = "hc-9f9cfc28ffd7455db4a08ac7a0e"
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
