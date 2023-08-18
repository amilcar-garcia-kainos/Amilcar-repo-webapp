# resource "azurerm_postgresql_database" "postgressql_db" {
#   name                = "webapp-db"
#   resource_group_name = azurerm_resource_group.webapp_rg.name
#   server_name         = azurerm_postgresql_server.agt_postgresql_server.name
#   charset             = "UTF8"
#   collation           = "English_United States.1252"
# }
