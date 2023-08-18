# resource "azurerm_postgresql_server" "agt_postgresql_server" {
#   name                = "agtpostgresqlserver"
#   location            = azurerm_resource_group.webapp_rg.location
#   resource_group_name = azurerm_resource_group.webapp_rg.name

#   administrator_login          = "psqladmin"
#   administrator_login_password = "Belfast1973"

#   sku_name   = "GP_Gen5_4"
#   version    = "11"
#   storage_mb = 8192

#   backup_retention_days        = 7
#   geo_redundant_backup_enabled = true
#   auto_grow_enabled            = true

#   public_network_access_enabled    = false
#   ssl_enforcement_enabled          = true
#   ssl_minimal_tls_version_enforced = "TLS1_2"
# }