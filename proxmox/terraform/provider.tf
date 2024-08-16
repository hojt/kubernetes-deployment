terraform {
  required_providers {
    proxmox = {
      source = "telmate/proxmox"
      version = "3.0.1-rc3"
    }
  }
}

provider "proxmox" {
  #pm_parallel         = 1
  pm_tls_insecure     = true
  pm_api_url          = var.pm_api_url
  pm_password         = var.pm_password
  pm_user             = var.pm_user
  pm_api_token_id     = var.pm_api_token_id
  pm_api_token_secret = var.pm_api_token_secret
}
