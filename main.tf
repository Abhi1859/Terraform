provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "channu-rg"
  location = "East US"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "channu-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_storage_account" "storage" {
  name                     = "channustorage"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
