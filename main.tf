provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "channu-rg"
  location = "East US"
}
