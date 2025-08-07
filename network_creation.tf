# network_creation.tf

provider "google" {
  project     = "hc-1b9472e9d9644acd8ea25b95f8a"
  region      = "us-central1"
}

resource "google_compute_network" "my_network" {
  name                    = "mayur1"
  auto_create_subnetworks = true
  routing_mode            = "GLOBAL"
}

# Output the network information
output "network_info" {
  value = google_compute_network.my_network.id
}
