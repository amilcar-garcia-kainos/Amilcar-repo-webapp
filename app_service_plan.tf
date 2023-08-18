resource "azurerm_service_plan" "amilcar-plan" {
  name                = "amilcar-plan"
  resource_group_name = azurerm_resource_group.webapp_rg.name
  location            = var.resourceGroupLocation
  os_type             = "Linux"
  sku_name            = "B1"
}