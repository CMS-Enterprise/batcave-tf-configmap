variable "cluster_name" {}

variable "configmap_name" {
  default = "terragrunt-vars"
}

variable "configmap_namespace" {
  default = "batcave"
}

variable "configmap_labels" {
  default = {}
  type    = map(any)
}

variable "configmap_data" {
  default     = {}
  description = "The data injected into the configmap"
  type        = map(any)
}
