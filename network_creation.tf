# network_creation.tf

provider "google" {
  project     = "hc-377a0f3678414690acc9789a97b"
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
