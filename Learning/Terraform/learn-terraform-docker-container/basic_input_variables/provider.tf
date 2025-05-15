terraform {
  /*  cloud {
    organization = "fab-orga"
    workspaces {
      name = "learn-terraform-docker-container"
    }
  }
*/
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.1"
    }
  }
}

provider "docker" {}