# Configure the Azure Provider
provider "azurerm" {
  subscription_id = "85cd2292-82e3-4c72-a2d7-1ba724a25176"
  tenant_id = "120709b9-1cde-4a68-944a-f6fb5b566111"
  client_id = "a53107bf-fbf5-40cf-8752-e556704b2c67"
  client_secret  = var.client_secret
  features {}
}

terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "SmithaOrg"
    workspaces {
      name = "wsp-PaC"
    }   
  }
}
