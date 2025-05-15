# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "ef69a132f22db1a55a8da459cc05fe71bd543461bf477f3fc6b6357a9163ad8e"
resource "docker_container" "imported_container" {
  attach                                      = null
  cgroupns_mode                               = null
  command                                     = ["nginx", "-g", "daemon off;"]
  container_read_refresh_timeout_milliseconds = null
  cpu_set                                     = null
  cpu_shares                                  = 0
  destroy_grace_seconds                       = null
  dns                                         = []
  dns_opts                                    = []
  dns_search                                  = []
  domainname                                  = null
  entrypoint                                  = ["/docker-entrypoint.sh"]
  env                                         = null
  gpus                                        = null
  group_add                                   = []
  hostname                                    = "ef69a132f22d"
  image                                       = "sha256:a830707172e8069c09cf6c67a04e23e5a1a332d70a90a54999b76273a928b9ce"
  init                                        = false
  ipc_mode                                    = "private"
  log_driver                                  = "json-file"
  log_opts                                    = {}
  logs                                        = null
  max_retry_count                             = 0
  memory                                      = 0
  memory_swap                                 = 0
  must_run                                    = null
  name                                        = "prodcontainer"
  network_mode                                = "bridge"
  pid_mode                                    = null
  privileged                                  = false
  publish_all_ports                           = false
  read_only                                   = false
  remove_volumes                              = null
  restart                                     = "no"
  rm                                          = false
  runtime                                     = "runc"
  security_opts                               = []
  shm_size                                    = 64
  start                                       = null
  stdin_open                                  = false
  stop_signal                                 = "SIGQUIT"
  stop_timeout                                = 0
  storage_opts                                = {}
  sysctls                                     = {}
  tmpfs                                       = {}
  tty                                         = false
  user                                        = null
  userns_mode                                 = null
  wait                                        = null
  wait_timeout                                = null
  working_dir                                 = null
  ports {
    external = 8000
    internal = 80
    ip       = "0.0.0.0"
    protocol = "tcp"
  }
}
