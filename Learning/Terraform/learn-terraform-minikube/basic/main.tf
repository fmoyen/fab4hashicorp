resource "kubernetes_namespace" "mynamespace" {
  metadata {
    name = "fab-namespace"
  }
}