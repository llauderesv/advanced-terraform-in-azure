resource "azurerm_resource_group" "comics" {
  name     = "658-9e894e7e-creating-network-resources-in-azure-w"
  location = "Central US"
}

resource "azurerm_virtual_network" "comics" {
  name                = "vnet"
  resource_group_name = azurerm_resource_group.comics.name
  location            = azurerm_resource_group.comics.location
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "subnet"
    address_prefix = "10.0.2.0/24"
  }

  tags = {
    env = "dev"
  }
}


resource "azurerm_public_ip" "comics" {
  name                = "publicIpForLB"
  resource_group_name = azurerm_resource_group.comics.name
  location            = azurerm_resource_group.comics.location
  allocation_method   = "Static"

  tags = {
    env = "dev"
  }
}
