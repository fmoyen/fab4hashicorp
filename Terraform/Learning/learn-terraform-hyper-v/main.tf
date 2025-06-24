# Create a machine
resource "hyperv_machine_instance" "fabserver" {
  name                 = "fabserver"
  processor_count      = 4
  static_memory        = true
  memory_startup_bytes = 4294967296
  state                = "off"
}