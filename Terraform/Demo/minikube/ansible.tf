/*
resource "ansible_group" "servers" {
  name = "servers"
}

resource "ansible_host" "server1" {
  name   = server1
  groups = [ansible_group.servers.name]
  variables = {
#    ansible_host = server1
    ansible_user = "root"
  }
}
*/