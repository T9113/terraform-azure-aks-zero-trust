resource "azurerm_kubernetes_cluster" "aks" {
  name                = "prod-zero-trust-aks"
  location            = "eastus"
  resource_group_name = "rg-prod-aks"
  dns_prefix          = "prod-aks"

  default_node_pool {
    name       = "system"
    node_count = 3
    vm_size    = "Standard_D4s_v5"
  }

  identity { type = "SystemAssigned" }
}
