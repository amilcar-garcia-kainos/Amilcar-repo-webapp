# Create a resource group
resource "azurerm_resource_group" "webapp_rg" {
  name     = "webapp-amilcar-tf"
  location = var.resourceGroupLocation
}