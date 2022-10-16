terraform {
  required_version = ">=0.14.9"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.17"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = "true"
}
