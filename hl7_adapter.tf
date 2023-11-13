# resource "google_container_cluster" "gke_cluster" {
#   name     = "coshie-hl7-cluster"
#   location = "us-central1"  # Change as needed

#   initial_node_count = 1  # Change as needed
# }

# resource "google_container_node_pool" "default_pool" {
#   name       = "default-pool"
#   cluster    = google_container_cluster.gke_cluster.name
#   location   = google_container_cluster.gke_cluster.location
#   node_count = 1  # Change as needed

#   node_config {
#     machine_type = "n1-standard-1"  # Change as needed
#   }
# }

# resource "kubernetes_deployment" "hl7_adapter_deployment" {
#   metadata {
#     name = "hl7-adapter-deployment"
#   }

#   spec {
#     replicas = 1  # Change as needed

#     selector {
#       match_labels = {
#         app = "hl7-adapter"
#       }
#     }

#     template {
#       metadata {
#         labels = {
#           app = "hl7-adapter"
#         }
#       }

#       spec {
#         container {
#           name  = "hl7-adapter-container"
#           image = "gcr.io/cloud-healthcare-containers/mllp-adapter:latest"
#           ports {
#             container_port = 1234  # Change as needed
#           }
#           # Add additional configuration for your adapter container if needed
#         }
#       }
#     }
#   }
# }