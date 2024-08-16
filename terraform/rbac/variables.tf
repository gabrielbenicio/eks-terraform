variable "cluster_role_name" {
  description = "Name of the Kubernetes cluster role"
  type        = string
  default     = "example-cluster-role"
}

variable "cluster_role_binding_name" {
  description = "Name of the Kubernetes cluster role binding"
  type        = string
  default     = "example-cluster-role-binding"
}

variable "user_name" {
  description = "Name of the user for RBAC"
  type        = string
  default     = "example-user"
}