# network_creation.tf

provider "google" {
  credentials = file("<path-to-your-service-account-key.json>")
  project     = "your-gcp-project-id"
  region      = "us-central1"
}

resource "google_compute_network" "my_network" {
  name                    = "my-network"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "my_subnet" {
  name          = "my-subnet"
  ip_cidr_range = "10.0.1.0/24"
  network       = google_compute_network.my_network.self_link
  region        = "us-central1"
}

# Output the network information
output "network_info" {
  value = google_compute_network.my_network
}
