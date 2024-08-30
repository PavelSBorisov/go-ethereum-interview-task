resource "google_container_cluster" "geth-hardhat-cluster" {
  name     = "geth-hardhat-cluster"
  location = var.region

  enable_autopilot = true
}

output "kubernetes_cluster_name" {
  value = google_container_cluster.geth-hardhat-cluster.name
}

output "kubernetes_cluster_endpoint" {
  value = google_container_cluster.geth-hardhat-cluster.endpoint
}

output "kubernetes_cluster_ca_certificate" {
  value = base64decode(google_container_cluster.geth-hardhat-cluster.master_auth.0.cluster_ca_certificate)
}