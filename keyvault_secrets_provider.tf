resource "azurerm_key_vault" "kv" {
  name                = "kv-prod-aks-secrets"
  location            = "eastus"
  resource_group_name = "rg-prod-aks"
  tenant_id           = "tenant-id"
  sku_name            = "premium"
}
