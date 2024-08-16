output "cluster_role_name" {
  value = kubernetes_cluster_role.example.metadata[0].name
}

output "cluster_role_binding_name" {
  value = kubernetes_cluster_role_binding.example.metadata[0].name
}