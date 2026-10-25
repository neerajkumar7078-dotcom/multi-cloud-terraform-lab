variable "name" {
  type = string
}

variable "region" {
  type = string
}

variable "network_cidr" {
  type = string
}

resource "google_compute_network" "this" {
  name                    = "${var.name}-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "private" {
  name                     = "${var.name}-private"
  ip_cidr_range            = var.network_cidr
  region                   = var.region
  network                  = google_compute_network.this.id
  private_ip_google_access = true
}
