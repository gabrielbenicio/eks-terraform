resource "kubernetes_cluster_role" "example" {
  metadata {
    name = var.cluster_role_name
  }

  rule {
    api_groups = [""]
    resources  = ["pods"]
    verbs      = ["get", "list", "watch"]
  }
}

resource "kubernetes_cluster_role_binding" "example" {
  metadata {
    name = var.cluster_role_binding_name
  }

  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = kubernetes_cluster_role.example.metadata[0].name
  }

  subject {
    kind      = "User"
    name      = var.user_name
    api_group = "rbac.authorization.k8s.io"
  }
}