terraform {
  required_providers {
    kubernetes = {
      version = "~> 2.37"
    }
  }
}

provider "kubernetes" {
  config_path    = "~/.kube/config"
  config_context = "minikube"
}