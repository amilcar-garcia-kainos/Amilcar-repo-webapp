# Create virtual network
resource "azurerm_virtual_network" "amilcar_vnet" {
  name                = "amilcar-vnet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.webapp_rg.location
  resource_group_name = azurerm_resource_group.webapp_rg.name
}

resource "azurerm_subnet" "webapp_subnet" {
  name                 = "webapp-subnet"
  resource_group_name  = azurerm_resource_group.webapp_rg.name
  virtual_network_name = azurerm_virtual_network.amilcar_vnet.name
  address_prefixes     = ["10.0.1.0/24"]

  delegation {
    name = "delegation"

    service_delegation {

      actions = [
        "Microsoft.Network/virtualNetworks/read",
        "Microsoft.Network/virtualNetworks/subnets/action",
        "Microsoft.Network/virtualNetworks/subnets/join/action",
      ]
      name = "Microsoft.Web/serverFarms"

    }

  }

}

resource "azurerm_subnet" "db_subnet" {
  name                 = "db-subnet"
  resource_group_name  = azurerm_resource_group.webapp_rg.name
  virtual_network_name = azurerm_virtual_network.amilcar_vnet.name
  address_prefixes     = ["10.0.2.0/24"]



}

resource "azurerm_subnet" "keyvault_subnet" {
  name                 = "keyvault-subnet"
  resource_group_name  = azurerm_resource_group.webapp_rg.name
  virtual_network_name = azurerm_virtual_network.amilcar_vnet.name
  address_prefixes     = ["10.0.3.0/24"]
  service_endpoints    = ["Microsoft.KeyVault"]

}