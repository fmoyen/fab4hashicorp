output "container_name" {
  description = "the name of the container"
  value       = docker_container.nginx.name
}

output "container_id" {
  description = "the ID of the container"
  value       = docker_container.nginx.id
}
