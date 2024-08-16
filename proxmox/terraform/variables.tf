variable "pm_api_url" {
  default = "https://proxmox.local:8006/api2/json"
}

variable "pm_node" {
  default = "pve"
}

variable "pm_user" {
  default = ""
}

variable "pm_password" {
  default = ""
}

variable "pm_api_token_id" {
  default = ""
}

variable "pm_api_token_secret" {
  default = ""
}

variable "ssh_key_file" {
  default = "~/.ssh/id_rsa.pub"
}

variable "template_name" {
  default = "ubuntu-2404-cloudinit-template"
}
