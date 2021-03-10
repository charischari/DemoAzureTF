provider "azurerm" {
  version = "=2.0.0"
  features {}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "rg-demo-azure-tf"
    storage_account_name = "cchaztf"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "rg-demo-azure" {
  name     = "rg-demo-azure"
  location = "westeurope"
}