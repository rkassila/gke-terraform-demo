provider "google" {
  project     = var.project_id
  region      = var.region
  zone        = var.zone
  credentials = file(var.credentials_file)
}

resource "google_container_cluster" "primary" {
  name     = var.cluster_name
  location = var.zone

  initial_node_count = var.node_count

  node_config {
    machine_type = var.machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }

  # Disable some features to keep it cheap
  remove_default_node_pool = false
  enable_autopilot         = false
}
