resource "azurerm_linux_web_app" "amilcar-web-app" {
  name                = "amilcar-web-app"
  resource_group_name = azurerm_resource_group.webapp_rg.name
  location            = "eastus"
  service_plan_id     = azurerm_service_plan.amilcar-plan.id

  site_config {
    minimum_tls_version = "1.2"
    application_stack {
      node_version = "14-lts"
    }

    vnet_route_all_enabled = true

  }
}