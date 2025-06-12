# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform
resource "kubernetes_deployment" "hellominikube" {
  wait_for_rollout = null
  metadata {
    annotations   = {}
    generate_name = null
    labels = {
      app = "hello-minikube"
    }
    name      = "hello-minikube"
    namespace = "default"
  }
  spec {
    min_ready_seconds         = 0
    paused                    = false
    progress_deadline_seconds = 600
    replicas                  = "1"
    revision_history_limit    = 10
    selector {
      match_labels = {
        app = "hello-minikube"
      }
    }
    strategy {
      type = "RollingUpdate"
      rolling_update {
        max_surge       = "25%"
        max_unavailable = "25%"
      }
    }
    template {
      metadata {
        annotations   = {}
        generate_name = null
        labels = {
          app = "hello-minikube"
        }
        name      = null
        namespace = null
      }
      spec {
        active_deadline_seconds          = 0
        automount_service_account_token  = false
        dns_policy                       = "ClusterFirst"
        enable_service_links             = false
        host_ipc                         = false
        host_network                     = false
        host_pid                         = false
        hostname                         = null
        node_name                        = null
        node_selector                    = {}
        priority_class_name              = null
        restart_policy                   = "Always"
        runtime_class_name               = null
        scheduler_name                   = "default-scheduler"
        service_account_name             = null
        share_process_namespace          = false
        subdomain                        = null
        termination_grace_period_seconds = 30
        container {
          args                       = []
          command                    = []
          image                      = "kicbase/echo-server:1.0"
          image_pull_policy          = "IfNotPresent"
          name                       = "echo-server"
          stdin                      = false
          stdin_once                 = false
          termination_message_path   = "/dev/termination-log"
          termination_message_policy = "File"
          tty                        = false
          working_dir                = null
          resources {
            limits   = {}
            requests = {}
          }
        }
      }
    }
  }
}
