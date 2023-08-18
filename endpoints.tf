# Creating endpoint
# resource "azurerm_private_endpoint" "agt_db_pe" {
#   name                = "amilcar-privateendpoint"
#   location            = azurerm_resource_group.webapp_rg.location
#   resource_group_name = azurerm_resource_group.webapp_rg.name
#   subnet_id           = azurerm_subnet.db_subnet.id

#   private_service_connection {
#     name                           = "private-service-connection"
#     private_connection_resource_id = azurerm_postgresql_server.agt_postgresql_server.id
#     subresource_names              = ["postgresqlServer"]
#     is_manual_connection           = false
#   }

# }