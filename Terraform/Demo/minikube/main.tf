resource "kubernetes_namespace" "demo" {
  metadata {
    name = "demo-ns"
  }
}

# NGINX EXAMPLE
/*
resource "kubernetes_deployment" "nginx" {
  metadata {
    name      = "nginx-dp"
    namespace = kubernetes_namespace.demo.metadata.0.name
  }
  spec {
    replicas = 2
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
resource "kubernetes_service" "nginx" {
  metadata {
    name      = "nginx-svc"
    namespace = kubernetes_namespace.demo.metadata.0.name
  }
  spec {
    selector = {
      app = kubernetes_deployment.nginx.spec.0.template.0.metadata.0.labels.app
    }
    type = "NodePort"
    port {
      node_port   = 30210
      port        = 80
      target_port = 80
    }
  }
}
*/

# UBI9 DEPLOYMENT
resource "kubernetes_deployment" "ubi9" {
  metadata {
    name      = "ubi-dp"
    namespace = kubernetes_namespace.demo.metadata.0.name
  }
  spec {
    replicas = 1
    selector {
      match_labels = {
        app = "DemoApp"
      }
    }
    template {
      metadata {
        labels = {
          app = "DemoApp"
        }
      }
      spec {
        container {
          image   = "redhat/ubi9"
          name    = "ubi9-container"
          command = ["/bin/sh", "-c"]
          args    = ["echo 'Bonjour Fab'; sleep infinity"]
        }
      }
    }
  }
}

data "kubernetes_resource" "ubipod" {
  api_version = "v1"
  kind        = "Pod"

  metadata {
    name      = "ubi-dp-c78d55fbc-jmv65"
    namespace = "demo-ns"
  }
}

output "podIP" {
  value = data.kubernetes_resource.ubipod.object.status.podIP
}
