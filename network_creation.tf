# network_creation.tf

provider "google" {
  project     = "hc-f552273c4d114486a706aedd00e"
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
