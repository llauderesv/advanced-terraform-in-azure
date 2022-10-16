resource "azurerm_resource_group" "guru" {
  name     = "625-4c706924-import-existing-resources-into-terraf"
  location = "South Central US"

  tags = {
    env = "dev"
  }
}

resource "azurer_resource_group" "tfstate" {
  name     = "tfstate"
  location = "eastus"
}

resource "random_string" "tfstate" {
  length  = 5
  special = false
  upper   = false
}


resource "azurerm_storage_account" "tfstate" {
  name                     = "tfstate${random_string.resource_code.result}"
  resource_group_name      = azurerm_resource_group.guru.name
  location                 = azurerm_resource_group.guru.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  allow_blob_public_access = true

  tags = {
    environment = "dev"
  }
}

resource "azurerm_storage_container" "tfstate" {
  name                  = "tfstate"
  storage_account_name  = azurerm_storage_account.tfstate.name
  container_access_type = "blob"
}

# Outputs
output "storage_account_name" {
  value = azurerm_storage_account.tfstate.name
}

output "storage_container_name" {
  value = azurerm_storage_container.tfstate.name
}
