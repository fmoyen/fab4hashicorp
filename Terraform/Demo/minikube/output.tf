output "deployment_id" {
  value = kubernetes_deployment.ubi9.id
}

output "podName" {
  value = data.kubernetes_resources.ubipod.objects[0].metadata.name
}

output "podIP" {
  value = data.kubernetes_resources.ubipod.objects[0].status.podIP
}

