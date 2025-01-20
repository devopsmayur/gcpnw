# network_creation.tf

provider "google" {
  project     = "hc-fff6e90888504253bd250e454a2"
  region      = "us-central1"
}

resource "google_compute_network" "my_network" {
  name                    = "mayur"
  auto_create_subnetworks = true
}

# Output the network information
output "network_info" {
  value = google_compute_network.my_network.id
}
