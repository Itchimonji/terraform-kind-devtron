variable "cluster_name" {
  type        = string
  description = "The name of the cluster."
  default     = "local-devtron"
}

variable "cluster_config_path" {
  type        = string
  description = "Cluster's kubeconfig location"
  default     = "~/.kube/config"
}

variable "ingress_nginx_helm_version" {
  type        = string
  description = "The Helm version for the nginx ingress controller."
  default     = "4.1.4"
}

variable "ingress_nginx_namespace" {
  type        = string
  description = "The nginx ingress namespace (it will be created if needed)."
  default     = "ingress-nginx"
}

variable "devtron_helm_version" {
  type        = string
  description = "The Helm version for the nginx ingress controller."
  default     = "0.22.26"
}

variable "devtron_namespace" {
  type        = string
  description = "The nginx ingress namespace (it will be created if needed)."
  default     = "devtroncd"
}
