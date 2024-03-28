terraform {
required_version = ">= 1.0.0"
  required_providers {
    nhncloud = {
      source  = "terraform.local/local/nhncloud"
      version = "1.0.1"
    }
  }
}

# Configure the nhncloud Provider
provider "nhncloud" {
  user_name   = "USER@MAIL"
  tenant_id   = "TENANT-ID"
  password    = "PASSWORD"
  auth_url    = "https://api-identity-infrastructure.nhncloudservice.com/v2.0"
  region      = "KR1"
}
