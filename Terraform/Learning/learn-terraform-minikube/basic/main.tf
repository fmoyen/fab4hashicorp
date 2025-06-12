locals {
  url_ports = {
    default = 30201
    dev     = 30202
    preprod = 30203
    prod    = 30204
  }
}

resource "kubernetes_namespace" "mynamespace" {
  metadata {
    name = "${terraform.workspace}-nginx-ns"
  }
}

resource "kubernetes_deployment" "test" {
  metadata {
    name      = "nginx-dp"
    namespace = kubernetes_namespace.mynamespace.metadata.0.name
  }
  spec {
    replicas = terraform.workspace == "prod" ? 3 : 2
    selector {
      match_labels = {
        app = "MyTestApp"
      }
    }
    template {
      metadata {
        labels = {
          app = "MyTestApp"
        }
      }
      spec {
        container {
          image = "nginx"
          name  = "nginx-container"
          port {
            container_port = 80
          }
        }
      }
    }
  }
}
resource "kubernetes_service" "test" {
  metadata {
    name      = "nginx-svc"
    namespace = kubernetes_namespace.mynamespace.metadata.0.name
  }
  spec {
    selector = {
      app = kubernetes_deployment.test.spec.0.template.0.metadata.0.labels.app
    }
    type = "NodePort"
    port {
      node_port   = local.url_ports["${terraform.workspace}"]
      port        = 80
      target_port = 80
    }
  }
}