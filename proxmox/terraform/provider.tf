terraform {
  required_providers {
    dotenv = {
      source = "germanbrew/dotenv"
      version = "1.1.3"
    }
    proxmox = {
      source = "telmate/proxmox"
      version = "3.0.1-rc3"
    }
  }
}

provider "dotenv" {}

data "dotenv_sensitive" "local" {}

locals {
  pm_api_token_id     = data.dotenv_sensitive.local.entries.PROXMOX_API_TOKEN_ID
  pm_api_token_secret = data.dotenv_sensitive.local.entries.PROXMOX_API_TOKEN_SECRET
}

provider "proxmox" {
  #pm_parallel        = 1
  pm_tls_insecure     = true
  pm_api_url          = var.pm_api_url
  pm_password         = var.pm_password
  pm_user             = var.pm_user
  pm_api_token_id     = "${coalesce(var.pm_api_token_id, local.pm_api_token_id)}"
  pm_api_token_secret = "${coalesce(var.pm_api_token_secret, local.pm_api_token_secret)}"
}
