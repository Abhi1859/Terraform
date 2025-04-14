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
  subscription_id = "5c200492-f95f-421f-bd35-8e95fc857bd0"
}