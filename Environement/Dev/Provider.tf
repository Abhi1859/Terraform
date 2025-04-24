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
  subscription_id = "e2b21bd3-23b3-43c2-a854-a8c3e3fad269"
}