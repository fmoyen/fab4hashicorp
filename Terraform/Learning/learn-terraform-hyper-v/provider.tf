terraform {
  required_providers {
    hyperv = {
      version = "~> 1.2.1"
      source  = "taliesins/hyperv"
    }
  }
}

provider "hyperv" {
  # user            = "Administator"
  # password        = "P@ssw0rd"
  host            = "127.0.0.1"
  # port            = 5986
  # https           = true
  insecure        = false
  use_ntlm        = true
  tls_server_name = ""
  cacert_path     = ""
  cert_path       = ""
  key_path        = ""
  # script_path     = "C:/Temp/terraform_%RAND%.cmd"
  timeout         = "30s"
}