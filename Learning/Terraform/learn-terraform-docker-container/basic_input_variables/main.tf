resource "docker_image" "nginx" {
  name         = "nginx"
  keep_locally = false
}

resource "docker_container" "nginx" {
  image        = docker_image.nginx.image_id
  name         = var.container_name
  network_mode = "bridge"

  ports {
    internal = 80
    external = 8000
  }
}
