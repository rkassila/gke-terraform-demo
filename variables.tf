variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "Region for GKE cluster"
  type        = string
  default     = "asia-northeast1"
}

variable "zone" {
  description = "Zone for GKE cluster"
  type        = string
  default     = "asia-northeast1-b"
}

variable "cluster_name" {
  description = "Name of the GKE cluster"
  type        = string
  default     = "cheap-gke-cluster"
}

variable "node_count" {
  description = "Number of nodes in the default node pool"
  type        = number
  default     = 1
}

variable "machine_type" {
  description = "Machine type for GKE nodes"
  type        = string
  default     = "e2-micro"
}

variable "credentials_file" {
  description = "Path to GCP service account JSON key"
  type        = string
}
