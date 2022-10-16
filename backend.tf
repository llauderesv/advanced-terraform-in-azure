terraform {
  backend "azurerm" {
    resource_group_name  = "tfstate"
    storage_account_name = "tfstate8td2o"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
