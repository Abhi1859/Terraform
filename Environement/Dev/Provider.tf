terraform {
  required_providers {
    azurem = {
      source  = "hashicorp/azurerm"
      version = "4.26.0"
      # version = "~> 3.0"
    }
    }
  }

provider "azurem" {
  features {}
  subscription_id = "2c68ed43-5abc-4e76-a2f4-b6b3f86d6b04"
}