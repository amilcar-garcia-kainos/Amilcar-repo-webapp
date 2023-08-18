# # Creating private dns zone
# resource "azurerm_private_dns_zone" "agtPDNS" {
#   name                = "privatelink.postgres.database.azure.com"
#   resource_group_name = azurerm_resource_group.webapp_rg.name
# }

# # linking private dns zone to the virtual network
# resource "azurerm_private_dns_zone_virtual_network_link" "agtPDNSLK" {
#   name                  = "Link-PDNS-VNET"
#   resource_group_name   = azurerm_resource_group.webapp_rg.name
#   private_dns_zone_name = azurerm_private_dns_zone.agtPDNS.name
#   virtual_network_id    = azurerm_virtual_network.amilcar_vnet.id
#   registration_enabled = true
# }