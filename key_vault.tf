# Creating the key vault

data "azurerm_client_config" "current" {}

# resource "azurerm_key_vault" "agtKV" {
#   name                        = "amilcar-key-vault"
#   location                    = azurerm_resource_group.webapp_rg.location
#   resource_group_name         = azurerm_resource_group.webapp_rg.name
#   #enabled_for_disk_encryption = true
#   tenant_id                   = data.azurerm_client_config.current.tenant_id
#   #enable_rbac_authorization   = true
#   soft_delete_retention_days  = 7
#   #purge_protection_enabled    = false
#   sku_name                    = "standard"

# }

#resource "azurerm_key_vault_secret" "agtKVS" {
#name         = "amilcar-key-vault-secret"
#value        = "notsurehere"
# key_vault_id = azurerm_key_vault.agtKV.id
#}